require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

module Crud
  require 'bcrypt'

  # Class methods
  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_password(password, hashed_password)
    BCrypt::Password.new(hashed_password) == password
  end

  def self.create_secure_users(users)
    users.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end
    users
  end

  def self.authenticate_users(username, password, users)
    users.each do |user|
      if user[:username] == username && verify_password(password, user[:password])
        return user
      end
    end
    "Invalid credentials"
  end

  # Instance methods for Student class
  module InstanceMethods
    def create_hash_digest(password)
      Crud.create_hash_digest(password) # Call class method directly
    end

    def verify_password(password, hashed_password)
      Crud.verify_password(password, hashed_password)
    end
  end
end



# # remove the self. part, since it is being exported as module  
# # uncomment and use the following lines to test the code
# # we can also write Crud.method_name but self.method_name makes it independent of module_name
# users = [
#   {username: 'marich', password: 'password1'},
#   {username: 'ganesh', password: 'password2'},
#   {username: 'sumit', password: 'password3'},
#   {username: 'hiesenberg', password: 'password4'},
#   {username: 'kunal', password: 'password5'},
# ]

# new_users = create_secure_users(users)
# # puts new_users
# puts authenticate_users('marich', 'password1', new_users)
# puts authenticate_users('marich', 'passwor99d1', new_users)


# #we can use this module in another files 
