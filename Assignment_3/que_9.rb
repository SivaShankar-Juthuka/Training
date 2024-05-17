# Prim's Minimum Spanning Tree (MST) algorithm.
class PrimsAlgo
    attr_accessor :v, :graph, :INF

    def initialize(vertices)
        @INF = Float::INFINITY
        @v = vertices
        @graph = Array.new(@v) { Array.new(@v, 0) }
    end

    # A utility function to print the constructed MST stored in parent[]
    def print_mst(parent)
        puts "Edge \tWeight"
        (1...@v).each do |i|
            puts "#{parent[i]} - #{i}\t#{@graph[i][parent[i]]}"
        end
    end

    # A utility function to find the vertex with minimum distance value from the set of vertices
    def min_key(key, mst_set)
        min = @INF
        min_index = nil
        (0...@v).each do |v|
            if key[v] < min && !mst_set[v]
                min = key[v]
                min_index = v
            end
        end
        min_index
    end

    # Function to construct and print MST for a graph
    def prim_mst
        key = Array.new(@v, @INF)
        parent = Array.new(@v)
        key[0] = 0
        mst_set = Array.new(@v, false)
        parent[0] = -1

        (@v - 1).times do
            u = min_key(key, mst_set)
            break if u.nil?  # Break if no minimum key is found
            mst_set[u] = true
            (0...@v).each do |v|
                if @graph[u][v] > 0 && !mst_set[v] && key[v] > @graph[u][v]
                    key[v] = @graph[u][v]
                    parent[v] = u
                end
            end
        end
        print_mst(parent)
    end
end

print "Enter Number of Nodes: "
nodes = gets.chomp.to_i
puts "Enter the weighted Matrix: "
weighted_matrix = []
for i in 0...nodes
    weighted_matrix[i] = gets.chomp.split(" ").map(&:to_i)
end

prims = PrimsAlgo.new(nodes)
prims.graph = weighted_matrix
prims.prim_mst
