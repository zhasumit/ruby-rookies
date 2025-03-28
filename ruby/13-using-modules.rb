require_relative 'crud_bcrpyt'

# # Method 2
# $LOAD_PATH = '.'
# require 'crud_with_bcrypt'

users = [
  {username: 'marich', password: 'password1'},
  {username: 'ganesh', password: 'password2'},
  {username: 'sumit', password: 'password3'},
  {username: 'hiesenberg', password: 'password4'},
  {username: 'kunal', password: 'password5'},
]

new_users = Crud.create_secure_users(users)
puts new_users

# ------------------------------------------------------

class Student
  include Crud::InstanceMethods # Adds instance methods to Student
  extend Crud                   # Adds class methods to Student

  attr_accessor :first_name, :last_name, :email, :username
  attr_reader :user_id
  attr_writer :password

  def initialize(first_name, last_name, email, username, password)
    @user_id = rand(1..20000)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def get_password
    @password
  end
end



sumit = Student.new('Sumit', 'Jha', 'sumit@example.com','sumitjha', 'sumit@123')
p sumit.get_password

hashed_password = sumit.create_hash_digest(sumit.get_password)
puts hashed_password