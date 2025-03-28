# string concatination
sentence = "My name is Jha"
p sentence

first_name = 'Surbhi'
last_name = 'sachdeva'



# single quotes: not able to perform string interpolation
# double quotes: can do escape sequence 
p first_name + ' ' + last_name

# string interpolation
# interpolation : putting variables in between string
# $irb : interactive ruby bash : repl (read enter print loop)
puts 'My peer is #{first_name}' # this doesnot put variables
puts "My peer is #{first_name}"
full_name = "#{first_name} #{last_name}"
puts "full name is ig, #{full_name}"



# common methods
p full_name.class # find the data_ype of the thing
# data_type can be found directly on the values 
p 10.class
p 10.0.class
p "Sumit".class

# p "Since this is a string".methods # uncomment for flooding terminal
# can attach multiple methods in chaining 
p 10.to_s
p 10.to_s.class
p full_name.length
p full_name.reverse
p full_name.capitalize
p "".empty? # ? is for true and false returning 
p "".nil?
p nil.nil?

sentence = "Welcome to Python Programming"
p sentence.sub('Python', 'Ruby') # replaces the word ruby with python

sentence = "Python is the most popular programming language, Python is fun, python is easy to learn"
p sentence.gsub('Python', 'Ruby') # replaces all occurrences of ruby with python



# variable assignment
new_first_name = first_name
# new_first_name and first_name are pointing to the same memory location
# since everything in ruby is object 
first_name = "Vaishnavi" # now it points to a new memory location
p first_name

# so it does not affect new_first_name
p new_first_name



# escaping
# in double quotes, things are escaped 
# p shows the raw content (doesnot care the escape sequences)
puts "This is a string with \"double quotes\""
puts "This is a string with 'single quotes'"
puts 'This is a string with "double quotes"' 
# can put single quotes in double quotes and vice versa

# in single quotes, things are not escaped 
puts "My name is \nSumit" # \n is newline



# Take a number from the user 
print "Hey, what is your name?: "
user_name = gets.chomp
puts "Nice to meet you, #{user_name}!"

# take a number from the user and convert it to integer
print "Enter a number: "
user_number = gets.chomp.to_i 
puts "Your number is #{user_number} times 2 is #{user_number * 2}"


# Exercise to take first name, last name and age from the user
# concatinate them to form a full name, print reverse, count non-whitespaces, characters
print "Enter your first name: "
first_name = gets.chomp

print "Enter your last name: "
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name}"
puts "reversed name is #{full_name.reverse}"
puts "#letters: #{full_name.length - full_name.count(' ')}"


