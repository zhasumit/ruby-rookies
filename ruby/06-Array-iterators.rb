# ruby me range is 1..n (creates a class range)
a = [1, 2, 3, 4, 5]
x = 1..40
puts x
# class of the variable is range 
puts x.class

# converting the range to array 
print x.to_a
puts
puts
# shuffling the array
print x.to_a.shuffle

puts
puts
# bang saves the array to the original
puts "Array after bang shuffling"
array = x.to_a.shuffle!
print array

# we can directly make the array from the range
x = (1..10).to_a.shuffle!
puts
puts
print x

x.reverse! 
puts
print "Reversed array: "
print x


# take a range of characters in x and make a shuffled array
puts
x = "a".."z"
print x
puts
print x.class
puts
y = x.to_a.shuffle
print y
puts
print "Length of the array: ", y.length


# pushing and popping elements liek LIFO in stack
puts 
puts
print a
puts 
a << 34
print a
puts
puts a.first
puts a.last

# unshifing is putting to the first part 
# append is adding to the end of the list 
a.unshift("Sumit")
a.append("Jha")
print a 
puts


# getting the unique elements and removing duplicates (in order)
b = [1, 4, 2, 3, 5, 3, 3, 2, 5, 2, 5, 6, 3, 5, 2, 1] 
b.uniq!
print b
puts
print b.empty? ? "Array is empty\n" : "Array is not empty\n"
# for finding / checking presence
puts b.include?(8)
puts a.include?("Sumit")
puts a.include?(-43)


b.push("new item")
print b

puts 
popped = b.pop
print popped
puts

# convert array into string 
print b.join
puts
# joining and forming the string 
print b.join('-')

b = b.join('-')

# splitting the string into array (on basis of some character)
b = b.split('-')
puts
print b


# make the sentence words into an array 
puts
print %w(My name is sumit, i am doing rails, ruby is amazing)

puts
puts
# iterating the array
for i in a
  puts i
end


# looping through the array 
z = %w(My name is sumit, i am doing rails, ruby is amazing)
print z
puts
z.each{ |i| print i.capitalize + " "}

puts
puts
x = 1..100
x = x.to_a.shuffle!
print x.select {|i| i.odd? }
