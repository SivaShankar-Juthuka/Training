# class for Minimum Spanning Tree - Dijkstra's Algorithm
class DijkstraAlgo
    attr_accessor :INF, :graph

    def initialize(weighted_matrix)
        @INF = Float::INFINITY
        @graph = weighted_matrix
    end

    def min_distance(dist, spt_set)
        min = @INF
        min_index = -1
        dist.each_with_index do |d, v|
            if !spt_set[v] && d <= min
                min = d
                min_index = v
            end
        end
        min_index
    end
    
    # A utility function to print the constructed distance array
    def print_solution(dist)
        puts "Vertex \t Distance from Source"
        dist.each_with_index do |d, i|
            puts "#{i} \t #{d}"
        end
    end
    
    def dijkstra_MST(src)
        v = @graph.size
        dist = Array.new(v, @INF)
        spt_set = Array.new(v, false)
        dist[src] = 0

        (v - 1).times do
            u = min_distance(dist, spt_set)
            spt_set[u] = true
            @graph[u].each_with_index do |weight, v|
                if !spt_set[v] && weight != 0 && dist[u] != @INF && dist[u] + weight < dist[v]
                    dist[v] = dist[u] + weight
                end
            end
        end
        print_solution(dist)
    end
end

print "Enter Number of Nodes: "
nodes = gets.chomp.to_i
puts "Enter the weighted Matrix: "
weighted_matrix = []
for i in 0..nodes-1
    weighted_matrix[i] = gets.chomp.split(" ").map(&:to_i)
end

dijkstra = DijkstraAlgo.new(weighted_matrix)
dijkstra.dijkstra_MST(0)