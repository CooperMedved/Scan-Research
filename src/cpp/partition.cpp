#include "partition.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <limits>
#include <sstream>
#include <stdexcept>
#include <unordered_map>

namespace scan {
namespace {
std::vector<std::string> split_csv(const std::string& line) {
    // Feature-engine output uses plain, unquoted identifiers.
    std::vector<std::string> parts;
    std::stringstream ss(line);
    std::string field;
    while (std::getline(ss, field, ',')) parts.push_back(field);
    if (!line.empty() && line.back() == ',') parts.emplace_back();
    return parts;
}
} // namespace

Graph read_feature_csv(const std::string& filename) {
    std::ifstream file(filename);
    if (!file) throw std::runtime_error("Cannot open feature CSV: " + filename);
    std::string line;
    if (!std::getline(file, line)) throw std::runtime_error("Feature CSV is empty");
    const auto columns = split_csv(line);
    auto column = [&](const std::string& name) -> std::size_t {
        auto it = std::find(columns.begin(), columns.end(), name);
        if (it == columns.end()) throw std::runtime_error("Missing CSV column: " + name);
        return static_cast<std::size_t>(it - columns.begin());
    };
    const auto ai = column("ff_i"), bi = column("ff_j"), wi = column("edge_weight");
    std::unordered_map<std::string, std::size_t> ids;
    Graph g;
    auto id_for = [&](const std::string& name) -> std::size_t {
        auto it = ids.find(name);
        if (it != ids.end()) return it->second;
        std::size_t id = g.names.size();
        ids[name] = id;
        g.names.push_back(name);
        return id;
    };
    std::size_t row = 1;
    while (std::getline(file, line)) {
        ++row;
        if (line.empty()) continue;
        const auto parts = split_csv(line);
        if (parts.size() != columns.size()) throw std::runtime_error("Malformed CSV row " + std::to_string(row));
        if (parts[ai].empty() || parts[bi].empty()) throw std::runtime_error("Empty FF name on CSV row " + std::to_string(row));
        std::size_t used = 0;
        double weight = std::stod(parts[wi], &used);
        if (used != parts[wi].size() || !std::isfinite(weight) || weight < 0)
            throw std::runtime_error("Invalid nonnegative edge weight on row " + std::to_string(row));
        const auto u = id_for(parts[ai]), v = id_for(parts[bi]);
        if (u == v) throw std::runtime_error("Self edge on row " + std::to_string(row));
        g.edges.push_back({u, v, weight});
    }
    if (g.names.empty()) throw std::runtime_error("No FF pairs found in CSV");
    g.adj.resize(g.names.size());
    for (const auto& e : g.edges) {
        g.adj[e.u].push_back({e.v, e.weight});
        g.adj[e.v].push_back({e.u, e.weight});
    }
    return g;
}

std::vector<int> initial_balanced_assignment(std::size_t n, int k) {
    if (k <= 0 || static_cast<std::size_t>(k) > n) throw std::runtime_error("Require 1 <= K <= number of FFs");
    std::vector<int> assignment(n);
    for (std::size_t i = 0; i < n; ++i) assignment[i] = static_cast<int>(i % k);
    return assignment;
}

void check_balance(const std::vector<int>& a, int k) {
    if (k <= 0) throw std::runtime_error("K must be positive");
    std::vector<std::size_t> counts(static_cast<std::size_t>(k), 0);
    for (int p : a) {
        if (p < 0 || p >= k) throw std::runtime_error("Invalid partition index");
        ++counts[static_cast<std::size_t>(p)];
    }
    const auto [lo, hi] = std::minmax_element(counts.begin(), counts.end());
    if (*hi > *lo + 1) throw std::runtime_error("Partition imbalance exceeds one FF");
}

double cut_cost(const Graph& g, const std::vector<int>& a) {
    if (a.size() != g.names.size()) throw std::runtime_error("Assignment size mismatch");
    double sum = 0;
    for (const auto& e : g.edges) if (a[e.u] != a[e.v]) sum += e.weight;
    return sum;
}
} // namespace scan

