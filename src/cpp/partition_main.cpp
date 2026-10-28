#include "partition.hpp"
#include <algorithm>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <stdexcept>

namespace scan {
namespace {
std::string json_escape(const std::string& s) {
    std::string out = "\"";
    for (unsigned char c : s) {
        if (c == '"' || c == '\\') { out += '\\'; out += static_cast<char>(c); }
        else if (c == '\n') out += "\\n";
        else if (c == '\r') out += "\\r";
        else if (c == '\t') out += "\\t";
        else if (c < 32) {
            const char hex[] = "0123456789abcdef";
            out += "\\u00";
            out += hex[c >> 4]; out += hex[c & 15];
        } else out += static_cast<char>(c);
    }
    return out + '"';
}
} // namespace

void write_result_json(const std::string& filename, const Graph& g,
                       const PartitionResult& result, int k) {
    std::ofstream out(filename);
    if (!out) throw std::runtime_error("Cannot write JSON: " + filename);
    out << std::fixed << std::setprecision(6);
    out << "{\n  \"num_ffs\": " << g.names.size() << ",\n  \"k\": " << k
        << ",\n  \"initial_cost\": " << result.initial_cost
        << ",\n  \"final_cost\": " << result.final_cost << ",\n  \"partitions\": [\n";
    for (int p = 0; p < k; ++p) {
        out << "    {\"id\": " << p << ", \"ffs\": [";
        bool first = true;
        for (std::size_t i = 0; i < g.names.size(); ++i) {
            if (result.assignment[i] != p) continue;
            if (!first) out << ", ";
            out << json_escape(g.names[i]); first = false;
        }
        out << "]}" << (p + 1 < k ? "," : "") << "\n";
    }
    out << "  ],\n  \"swaps\": [\n";
    for (std::size_t i = 0; i < result.swaps.size(); ++i) {
        const auto& s = result.swaps[i];
        out << "    {\"ff_a\": " << json_escape(s.ff_a)
            << ", \"ff_b\": " << json_escape(s.ff_b)
            << ", \"before\": " << s.before << ", \"after\": " << s.after
            << ", \"gain\": " << s.gain << "}"
            << (i + 1 < result.swaps.size() ? "," : "") << "\n";
    }
    out << "  ],\n  \"crossing_edges\": [\n";
    bool first = true;
    for (const auto& e : g.edges) {
        if (result.assignment[e.u] == result.assignment[e.v]) continue;
        if (!first) out << ",\n";
        out << "    {\"ff_i\": " << json_escape(g.names[e.u])
            << ", \"ff_j\": " << json_escape(g.names[e.v])
            << ", \"weight\": " << e.weight << "}";
        first = false;
    }
    out << "\n  ]\n}\n";
}
} // namespace scan

int main(int argc, char** argv) {
    try {
        if (argc != 4) {
            std::cerr << "Usage: scan_partition <features.csv> <K> <result.json>\n";
            return 2;
        }
        const auto graph = scan::read_feature_csv(argv[1]);
        const int k = std::stoi(argv[2]);
        auto assignment = scan::initial_balanced_assignment(graph.names.size(), k);
        const auto result = scan::refine(graph, std::move(assignment), k);
        scan::write_result_json(argv[3], graph, result, k);
        std::cout << std::fixed << std::setprecision(6)
                  << "FFs: " << graph.names.size() << " | edges: " << graph.edges.size()
                  << " | K: " << k << "\nInitial cut: " << result.initial_cost
                  << "\nFinal cut: " << result.final_cost
                  << "\nAccepted swaps: " << result.swaps.size()
                  << "\nSaved: " << argv[3] << '\n';
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << '\n';
        return 1;
    }
}
