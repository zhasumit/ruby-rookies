# Area code dictionary 
dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
def get_city_names(somehash)
  somehash.keys
end 
 
# Execution flow
loop do
  puts "Y/y to continue... "
  answer = gets.chomp.downcase
  break unless answer == 'y'
   
  puts "Enter city, to lookup area code: "
  puts dial_book.keys.join(", ")

  print "Enter city name: "
  city = gets.chomp
  if dial_book.include?(city.downcase)
    puts "Area code for #{city}: #{dial_book[city]}"
  else 
    puts "Invalid city name."
  end  
end



# some conventions 
# 1. Use snake_case for variable names and method names
# 2. class names are camelcase ApplicationController, AuthenticationService, etc.
# 3. use 2 spaces per indentation level