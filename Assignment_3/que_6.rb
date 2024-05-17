# class for DFS 
class DFS
    attr_accessor :visted, :adj_matrix
    
    # initilization
    def initialize(nodes, adj_matrix) 
        @visted = Array.new(nodes, false)
        @adj_matrix = adj_matrix
    end
    
    # function to visit the vertexes
    def depth_first_search(vertex)
        @visted[vertex] = true
        print vertex, " "
        @adj_matrix[vertex].each_with_index do |val, i|  
            if val == 1 && !@visted[i] 
                depth_first_search(i)
            end
        end
    end
end

# number of Nodes to be in graph
print "Enter Number of Nodes: "
nodes = gets.chomp.to_i
puts "Enter the Adjacency Matrix: "
adjacency_matrix = []
for i in 0..nodes-1
    adjacency_matrix[i] = gets.chomp.split(" ").map(&:to_i)
end

# creating object for DFS
dfs = DFS.new(nodes, adjacency_matrix)
puts "\nDepth First Search: "
dfs.depth_first_search(0)