# Write a `randomize()` method which takes an array of strings as input and returns the same strings distributed randomly into arrays of sizes 2, 3, or 4.


# For example:

# ```ruby
# *>> randomize(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"])
# => [ ["d", "h", "l"], ["a", "c"], ["f", "b", "k", "i"], ["e", "g", "j"] ]*
# ```

def randomize_array(array)
  shuffled_array = array.shuffle
  elements_count = array.count
  sliced_groups = []

  while elements_count >= 1
    sliced_array = shuffled_array.slice(0, rand(1..elements_count))
    sliced_groups << sliced_array
    shuffled_array = shuffled_array - sliced_array
    elements_count = shuffled_array.count
  end
  
  sliced_groups.reject(&:empty?)
  
  puts "#{sliced_groups}"
end

randomize_array(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"])