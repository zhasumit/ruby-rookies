# Numbers 
puts 1 + 2
puts 3 - 5

puts 4 * 2
puts 10 / 2

# since both integers 
puts 10 / 4


# if one of them is float, result will be float
puts 10.0 / 4
puts 10 / 4.0
puts 10 / 4.to_f
puts (10 / 4).to_f # since already made division doesnot work 


# puts "5" * "5" # string cannot be multiplied to string
puts "5" * 5 # this will work since we are putting "5" 5 times
# puts 5 * "5" # int * string is not possible (since int needs int for operation)


# putting a string multiple times on the screen
puts "-" * 20
4.times { puts "Hi" }
7.times { puts rand(10) }

# if the string is convertable to the integer, it will be
x = "6".to_i
y = "4.4".to_f
print x * y


# if not convertable, it will return zero
# print "hello".to_i 
# puts "whatsup".to_f


# Take the input from the user and make a calculator program\
print "\nEnter first number: "
num1 = gets.chomp.to_f
print "Enter second number: "
num2 = gets.chomp.to_f

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"



# comparision

# ==
# !=
# <
# >
# <=
# >=

puts 5 == 5
puts 5 != 5
puts 5 < 5
puts 5 > 5
puts 5 <= 5
puts 5 >= 5

10.times { print"-" }
puts
puts 10 == "10"
puts 10 == "10".to_i
puts 10 == "10".to_f
puts 10 != 9

puts "hello" < "world"
puts "hello" == "hello"
puts "hello world" != "bye world"

10.times { print"-" }
puts
# value and type of the data 
puts 10.equal?(10.0)
puts 10.equal?(10)
puts "10".equal?(10.to_f)



