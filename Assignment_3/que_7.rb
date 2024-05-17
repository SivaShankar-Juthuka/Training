# class for BFS
class BFS
    attr_accessor :visted, :adj_matrix, :queue

    # initialization
    def initialize(nodes, adj_matrix)
        @visted = Array.new(nodes, false)
        @adj_matrix = adj_matrix
        @queue = Queue.new
    end

    # function to visit the neighbor vertexes 
    def breadth_first_search(vertex)
        @visted[vertex] = true
        @queue << vertex
        while !@queue.empty?
            front = @queue.shift
            print front," "
            @adj_matrix[front].each_with_index do |val, i|  
                if val == 1 && !@visted[i] 
                    @visted[i] = true
                    @queue << i
                end
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

# creating object for BFS
bfs = BFS.new(nodes, adjacency_matrix)
puts "\nBreadth First Search: "
bfs.breadth_first_search(0)