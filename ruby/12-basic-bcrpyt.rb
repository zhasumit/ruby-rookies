# use case: authentication authorization
# security is important, passwords are not stored in raw strings
# Hashed digests are stored in db 
# MD5 is used to add encryption using a salt 
# bcrypt is used to add encryption using a salt

# require 'bundler/inline'

# gemfile true do
#   source 'http://rubygems.org'
#   gem 'bcrypt'
# end

require 'bcrypt'
def encrypt_password(password)
  BCrypt::Password.create(password)
end

def check_password(password, hashed_password)
  BCrypt::Password.new(hashed_password) == password
end

password = "my_secure_password"
password2 = "my_secure_password_or_not"

hashed_password = encrypt_password(password)
puts hashed_password.version
puts hashed_password.cost

puts hashed_password
# everytime is different 
# version 2, cost 10 
puts hashed_password == "my_secure_password" # checks if correct
puts hashed_password == "my_secure_password_or_not" # checks if correct

# another way 
# puts hashed_password 

# # check if the password is correct 
# puts check_password(password, hashed_password)
# puts check_password(password2, hashed_password)



