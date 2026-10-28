#pragma once
#include <cstddef>
#include <string>
#include <vector>

namespace scan {
struct Edge { std::size_t u, v; double weight; };
struct Graph {
    std::vector<std::string> names;
    std::vector<Edge> edges;
    std::vector<std::vector<std::pair<std::size_t, double>>> adj;
};
struct SwapRecord {
    std::string ff_a, ff_b;
    double before, after, gain;
};
struct PartitionResult {
    std::vector<int> assignment;
    double initial_cost = 0;
    double final_cost = 0;
    std::vector<SwapRecord> swaps;
};
Graph read_feature_csv(const std::string& filename);
std::vector<int> initial_balanced_assignment(std::size_t n, int k);
double cut_cost(const Graph& graph, const std::vector<int>& assignment);
void check_balance(const std::vector<int>& assignment, int k);
PartitionResult refine(const Graph& graph, std::vector<int> initial, int k);
void write_result_json(const std::string& filename, const Graph& graph,
                       const PartitionResult& result, int k);
} // namespace scan
