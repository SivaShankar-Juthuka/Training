# Taking Hashes as inputs
hash1 = {}
hash2 = {}
# Pushing keys, and values dynamically in hash 1
print "Enter the number of keys needed for first hash1: "
n = gets.chomp.to_i
n.times{
    print "\nEnter key: "
    key = gets.chomp
    print "\nEnter value: "
    value = gets.chomp.to_i
    hash1[key] = value
}

# Pushing keys, and values dynamically in hash 2
print "\nEnter the number of keys needed for first hash2: "
m = gets.chomp.to_i

m.times{
    print "\nEnter key: "
    key = gets.chomp
    print "\nEnter value: "
    value = gets.chomp.to_i
    hash2[key] = value
}

# checking wheather keys of hashes are subsets
hash2.each do |key, value|
    if !(hash1.has_key?(key))  && !(value == hash1[key])
        puts "Keys in Hash2 is not subset of Keys in Hash1."
        puts "Values in Hash2 is not subset of Keys in Hash1."
        exit
    end
    if (hash1.has_key?(key)  && (value == hash1[key]))
        puts "Keys in Hash2 is subset of Keys in Hash1."
        puts "Values in Hash2 is subset of Keys in Hash1."
        exit
    end
    if  (hash1.has_key?(key))  && !(value == hash1[key])
        puts "Keys in Hash2 is subset of Keys in Hash1."
        puts "Values in Hash2 is not subset of Keys in Hash1."
        exit
    end
end