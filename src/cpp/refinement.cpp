#include "partition.hpp"
#include <cmath>
#include <limits>
#include <stdexcept>

namespace scan {
namespace {
// Only edges touching a or b can change after swapping their partitions.
double swap_gain(const Graph& g, const std::vector<int>& p, std::size_t a, std::size_t b) {
    if (p[a] == p[b]) return 0;
    double gain = 0;
    for (const auto& [v, w] : g.adj[a]) {
        if (v == b) continue; // The a--b edge remains crossing.
        gain += (p[a] != p[v] ? w : 0.0) - (p[b] != p[v] ? w : 0.0);
    }
    for (const auto& [v, w] : g.adj[b]) {
        if (v == a) continue;
        gain += (p[b] != p[v] ? w : 0.0) - (p[a] != p[v] ? w : 0.0);
    }
    return gain;
}
} // namespace

PartitionResult refine(const Graph& g, std::vector<int> initial, int k) {
    check_balance(initial, k);
    PartitionResult result;
    result.assignment = std::move(initial);
    result.initial_cost = cut_cost(g, result.assignment);
    double current = result.initial_cost;
    constexpr double eps = 1e-9;
    while (true) {
        double best = eps;
        std::size_t best_a = 0, best_b = 0;
        for (std::size_t a = 0; a < g.names.size(); ++a) {
            for (std::size_t b = a + 1; b < g.names.size(); ++b) {
                if (result.assignment[a] == result.assignment[b]) continue;
                const double gain = swap_gain(g, result.assignment, a, b);
                if (gain > best + eps) { best = gain; best_a = a; best_b = b; }
            }
        }
        if (best <= eps) break;
        const double before = current;
        std::swap(result.assignment[best_a], result.assignment[best_b]);
        check_balance(result.assignment, k);
        current = cut_cost(g, result.assignment);  // independent full audit per accepted swap
        if (before - current <= eps)
            throw std::runtime_error("Incremental gain disagrees with cut audit");
        if (std::abs((before - current) - best) > 1e-6)
            throw std::runtime_error("Incremental gain mismatch");
        result.swaps.push_back({g.names[best_a], g.names[best_b], before, current, before - current});
    }
    result.final_cost = cut_cost(g, result.assignment);
    return result;
}
} // namespace scan
