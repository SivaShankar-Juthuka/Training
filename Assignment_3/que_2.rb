# class for Merge Sort
class MergeSort
    attr_accessor :result

    def merge(array, low, mid, high)
        i = low
        j = mid + 1
        index = low
        k = low
        result = Array.new(array.length, 0)
        while i <= mid && j <= high
            if array[i] < array[j]
                result[index] = array[i]
                i += 1
            else
                result[index] = array[j]
                j += 1
            end
            index += 1
        end
        while j <= high
            result[index] = array[j]
            index += 1
            j += 1
        end
        while i <= mid
            result[index] = array[i]
            index += 1
            i += 1
        end
        while k <= high
            array[k] = result[k]
            k += 1
        end
    end

    def merge_sort(array, low, high)
        if low < high
            mid =  (high + low) /2
            merge_sort(array, low, mid)
            merge_sort(array, mid + 1, high)
            merge(array, low, mid, high)
        end
    end

end

array = []
puts "Enter Elements in the Array: "
array = gets.chomp.split().map(&:to_i)
puts "Array before sorting: #{array}"
# Creating Object 
merge = MergeSort.new
merge.merge_sort(array, 0, array.length-1)
print "\nAfter Sorting the Array: "
print array 