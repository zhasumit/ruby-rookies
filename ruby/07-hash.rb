sample_hash = { 'a' => 1, 'b' => 2, 'c' => 4, 'd' => 8, 'e' => 16 } 
my_details = {'name' => 'sumit', "favLanguage" => 'python'}

p sample_hash['b'] 


sample_hash.each do |key, value|
  puts "#{key} => #{value}"
end

my_details.each do |key, value|
  puts value
end

# symbols are unique and immutable
records = { :id => 1, :name => 'John Doe', :age => 30 }
puts records[:name]
records.each do |key, value|
  puts "#{key} => #{value}"
  puts "#{key.class} => #{value.class}"
  puts
end


# Adding values in hash
records[:gender] = "male"
puts records

# changeing / updating the value in hash
records[:age] = 24
puts records

# one liner : The preferred way to doing things in ruby 
records.each {|key, value| puts "#{key} => #{value}"}
records.select {|key, value| key == :age}

# select only the values that are integers 
puts records.select {|key, value| value.is_a? Integer}

records[:gpa] = 3.5
# in hash, if we remove the key the value gets deleted
# remove teh key if the value is a string
puts records
records.each {|key, value| records.delete(key) if value.is_a? Float}
puts records