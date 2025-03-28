# in ruby the last evaluated value is the return statement
 
def multiply (a, b)
  a * b # we can also use return a * b instead of returning it explicitly
end

def divide (a, b)
  a / b
end

def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def mod (a, b)
  a % b
end

def power (a, b)
  a ** b
end


def calculator ()
  print("Enter first number: ")
  a = gets.chomp.to_f
  print("Enter second number: ")
  b = gets.chomp.to_f

  print "#{a} + #{b} = #{add(a, b)}\n"
  print "#{a} - #{b} = #{subtract(a, b)}\n"
  print "#{a} * #{b} = #{multiply(a, b)}\n"
  print "#{a} / #{b} = #{divide(a, b)}\n"
  print "#{a} % #{b} = #{mod(a, b)}\n"
  print "#{a} ^ #{b} = #{power(a, b)}\n"
end

calculator()


