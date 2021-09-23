def find_first_duplicate(arr)
  nums_hash = {}

  i = 0
  while i < arr.length
    return arr[i] if nums_hash[arr[i]]
    nums_hash[arr[i]] = 1
    i += 1
  end
  -1
end

=begin
  4. Pseudocode

  Need a way of tracking unique vals so far - hash is good for this
  is it faster to iterate or search?

  create hash to track values
  loop through array
  if current value exists as key in hash
    return it
  else
    add key to hash
  end by returning -1 - if no return is hit so far, we haven't found one 

=end

=begin
  1. Rewrite problem in own words.
  Without changing order of values in array, find first value 
  that shows up more than once, and return it. if no 
  duplicates, return -1
=end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  puts 

  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 3, 3, 2, 5, 5, 5])


  puts

  puts "Expecting: -2"
  puts "=>", find_first_duplicate([2, -2, 3, 1, 4, 5, -2])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
