// Graph-guided ATPG structural features (slides 7-11). C++17 + Boost.PropertyTree.
#include <boost/property_tree/json_parser.hpp>
#include <boost/property_tree/ptree.hpp>
#include <algorithm>
#include <cmath>
#include <deque>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <map>
#include <set>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

using boost::property_tree::ptree;
using namespace std;

struct Cone {
    string ff, sink;
    set<string> gates, sources;
};

static set<string> strings(const ptree& p, const string& key) {
    set<string> result;
    for (const auto& child : p.get_child(key)) result.insert(child.second.get_value<string>());
    return result;
}

static double jaccard(const set<string>& a, const set<string>& b) {
    size_t common = 0;
    auto i = a.begin(), j = b.begin();
    while (i != a.end() && j != b.end()) {
        if (*i < *j) ++i;
        else if (*j < *i) ++j;
        else { ++common; ++i; ++j; }
    }
    const size_t total = a.size() + b.size() - common;
    return total ? double(common) / double(total) : 0.0;
}

struct Graph {
    unordered_map<string, int> ids;
    vector<string> names;
    vector<bool> is_gate;
    vector<vector<int>> next;

    int node(const string& id) {
        auto it = ids.find(id);
        if (it != ids.end()) return it->second;
        int n = static_cast<int>(names.size());
        ids[id] = n;
        names.push_back(id);
        is_gate.push_back(false);
        next.emplace_back();
        return n;
    }

    // 0-1 BFS: cost = number of combinational gate outputs traversed.
    vector<int> distances(int start) const {
        const int INF = numeric_limits<int>::max() / 4;
        vector<int> d(names.size(), INF);
        deque<int> todo;
        d[start] = 0;
        todo.push_front(start);
        while (!todo.empty()) {
            int u = todo.front(); todo.pop_front();
            for (int v : next[u]) {
                int weight = is_gate[v] ? 1 : 0;
                if (d[u] + weight >= d[v]) continue;
                d[v] = d[u] + weight;
                if (weight == 0) todo.push_front(v);
                else todo.push_back(v);
            }
        }
        return d;
    }
};

int main(int argc, char** argv) {
    if (argc != 4) {
        cerr << "Usage: " << argv[0] << " <graph.json> <cones.json> <features.csv>\n";
        return 2;
    }
    try {
        ptree graph_json, cones_json;
        boost::property_tree::read_json(argv[1], graph_json);
        boost::property_tree::read_json(argv[2], cones_json);
        Graph graph;
        for (const auto& item : graph_json.get_child("nodes")) {
            const auto& n = item.second;
            int idx = graph.node(n.get<string>("id"));
            graph.is_gate[idx] = n.get<string>("type") == "COMB";
        }
        for (const auto& item : graph_json.get_child("edges")) {
            const auto& edge = item.second;
            int u = graph.node(edge.get<string>("src"));
            int v = graph.node(edge.get<string>("dst"));
            graph.next[u].push_back(v);
        }

        vector<Cone> cones;
        for (const auto& item : cones_json.get_child("cones")) {
            const auto& c = item.second;
            if (c.get<string>("sink_type") != "PPO") continue;
            Cone cone;
            cone.ff = c.get<string>("destination_ff");
            cone.sink = c.get<string>("sink");
            cone.gates = strings(c, "gate_instances");
            cone.sources = strings(c, "source_ff_instances");
            if (!graph.ids.count(cone.sink)) throw runtime_error("Missing sink node: " + cone.sink);
            if (cone.ff.empty()) throw runtime_error("PPO missing destination FF");
            cones.push_back(std::move(cone));
        }
        sort(cones.begin(), cones.end(), [](const Cone& a, const Cone& b){ return a.ff < b.ff; });
        if (cones.empty()) throw runtime_error("No PPO cones found");
        set<string> seen;
        for (const auto& cone : cones)
            if (!seen.insert(cone.ff).second) throw runtime_error("Duplicate destination FF: " + cone.ff);

        // One shortest-path search per FF, reused for every pair.
        const int INF = numeric_limits<int>::max() / 4;
        vector<vector<int>> distance(cones.size());
        for (size_t i = 0; i < cones.size(); ++i) {
            string start = "PPI:" + cones[i].ff + ".Q";
            // Some FFs have QN only or multiple outputs. Discover by instance ID.
            const string prefix = "PPI:" + cones[i].ff + ".";
            vector<int> starts;
            for (size_t k = 0; k < graph.names.size(); ++k)
                if (graph.names[k].compare(0, prefix.size(), prefix) == 0) starts.push_back(int(k));
            distance[i].assign(graph.names.size(), INF);
            for (int start_id : starts) {
                auto d = graph.distances(start_id);
                for (size_t k = 0; k < d.size(); ++k) distance[i][k] = min(distance[i][k], d[k]);
            }
        }

        ofstream out(argv[3]);
        if (!out) throw runtime_error(string("Cannot write ") + argv[3]);
        out << "ff_i,ff_j,shared_gate_jaccard,shared_ppi_jaccard,direct_dependency,min_gate_distance,logical_proximity,edge_weight\n";
        out << fixed << setprecision(6);
        size_t pairs = 0;
        for (size_t i = 0; i < cones.size(); ++i) {
            for (size_t j = i + 1; j < cones.size(); ++j) {
                const auto& a = cones[i];
                const auto& b = cones[j];
                const double S = jaccard(a.gates, b.gates);
                const double F = jaccard(a.sources, b.sources);
                const bool dep = a.sources.count(b.ff) || b.sources.count(a.ff);
                const int da = distance[i][graph.ids.at(b.sink)];
                const int db = distance[j][graph.ids.at(a.sink)];
                const int d = min(da, db);
                const double L = d == INF ? 0.0 : 1.0 / (1.0 + d);
                const double w = 3.0*S + 2.0*F + 2.0*(dep ? 1.0 : 0.0) + L;
                out << a.ff << ',' << b.ff << ',' << S << ',' << F << ',' << (dep ? 1 : 0)
                    << ',';
                if (d != INF) out << d;
                out << ',' << L << ',' << w << '\n';
                ++pairs;
            }
        }
        cout << "PPO cones: " << cones.size() << " | pairs: " << pairs << "\n"
             << "Saved: " << argv[3] << "\n";
    } catch (const exception& ex) {
        cerr << "Error: " << ex.what() << '\n';
        return 1;
    }
}
