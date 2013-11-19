# Arrays implement some other useful methods.

# count/size/length
puts [1,2,3].count
puts [1,2,3].size
puts [1,2,3].length

# index
puts ["a","b","c"].index("b")

puts [1,2,3].index(4)

# first
puts [1,2,3,4,5,6].first

# last
puts [1,2,3,4,5,6].last

# include?
puts [1,2,3,4,5,6].include?(1)
puts [1,2,3,4,5,6].include?(7)


# 'compact' will remove nil members
array_with_nils = [nil, 1, nil ,3]
array_without_nils = array_with_nils.compact

# compact is still an array
array_with_nils.compact.each do |i|
  puts "odd" if i.odd?
end

# 'uniq' will ensure that each member is unique.
array_with_duplicates = [1,"1",1]
array_without_duplicates = array_with_duplicates.uniq

# 'flatten' will remove nesting from an array.
nested_array = [1, [2,3], [[4],5]]
flat_array = nested_array.flatten

# 'zip' will take a flat array and put each element in its own
# nested array
zipped_array = flat_array.zip

# 'join' will join the elements of an array with a delimiter
# it's the converse of split.
ingredients = ["turkey", "bacon", "lettuce", "tomato"]
club_sandwidch = ingredients.join(" BREAD ")

# notice that these methods do not modify the original objects
# they simply return modified copies of the object
alphabet = ["a", "b", "c"]
puts alphabet.reverse
puts alphabet

# these methods have ! versions that will modify the original object
puts alphabet.reverse!
puts alphabet

# concat - array
original = [1,2,3]
modified = original.concat([4,5,6])
puts original.inspect
puts modified.inspect

# insert - array
original = [1,2,3]
modified = original.insert(-1, [4,5,6])
puts original.inspect
puts modified.inspect

# pop
original = [1,2,3]
last = original.pop # pop(2)

puts original.inspect
puts last.inspect

# shift
original = [1,2,3]
first = original.shift

puts original.inspect
puts first.inspect

# push
original = [1,2,3]
added = original.push(4)
original << 4

puts original.inspect
puts added.inspect

# unshift
# destructive!
original = [1,2,3]
added = original.unshift(0)

puts original.inspect
puts added.inspect

# slice
original = [1,2,3]
all = original.slice(0, 3)

puts original.inspect
puts all.inspect

# delete / delete_at / delete_if
# these are destructive!
original = [1,1,2,3,5,8,13]
deleted = original.delete(1)
deleted_at = original.delete_at(2)
deleted_if = original.delete_if { |i| i.odd? }