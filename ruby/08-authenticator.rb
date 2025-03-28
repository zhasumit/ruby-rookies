users = [
  {username: 'marich', password: 'password1'},
  {username: 'ganesh', password: 'password2'},
  {username: 'sumit', password: 'password3'},
  {username: 'hiesenberg', password: 'password4'},
  {username: 'kunal', password: 'password5'},
]

puts "Authenticator"
print "-" * 30
puts


def auth_user(username, password, userlist)
  userlist .each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  return "Invalid credentials"   
end

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication
  break if authentication.class == Hash

  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4

