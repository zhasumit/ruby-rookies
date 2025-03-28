# at the end of the block put an end 
if true
  puts "correct"
else 
  puts "wrong"
end 
puts "end of the block"


if !true
  puts "wrong"
else 
  puts "correct"
end 
puts "end of the block"



# if elsif block
condition = true
second_condition = false
if condition && second_condition
  puts "both conditions are true"
elsif condition || second_condition
  puts "at least one condition is true"
else
  puts "both conditions are false"
end
puts "end of the block"



# ternary operator
a = 10
b = 5
puts a > b ? "a is greater" : "b is greater"


# case statement
grade = "A"
case grade
when "A"
  puts "Excellent!"
when "B"
  puts "Good job!"
when "C"
  puts "You passed!"
else
  puts "You failed!"
end
puts "end of the block"


# calculator 
print "Enter first number: "
num1 = gets.chomp.to_i
print "Enter second number: "
num2 = gets.chomp.to_i
print "Choose an operation (+, -, *, /, %, ^): "
operation = gets.chomp

# using if 
if operation == "+"
  result = num1 + num2
elsif operation == "-"
  result = num1 - num2
elsif operation == "*"
  result = num1 * num2
elsif operation == "/"
  if num2!= 0
    result = num1.to_f / num2.to_f
  else
    puts "Cannot divide by zero"
    result = nil
  end
elsif operation == "%"
  result = num1 % num2
elsif operation == "^"
  result = num1 ** num2
end
puts "Result: #{result}" if result





# Calculator 
print "Enter first number: "
num1 = gets.chomp.to_i
print "Enter second number: "
num2 = gets.chomp.to_i
print "Choose an operation (+, -, *, /, %, ^): "
operation = gets.chomp

# Using case (switch)
result = case operation
when "+"
  num1 + num2
when "-"
  num1 - num2
when "*"
  num1 * num2
when "/"
  num2 != 0 ? (num1.to_f / num2.to_f) : (puts "Cannot divide by zero"; nil)
when "%"
  num1 % num2
when "^"
  num1**num2
else
  puts "Invalid operation"
  nil
end

puts "Result: #{result}" if result
