# using constructor to initialize attributes at once not calling every time to make seperate attributes
class User 
  attr_accessor :first_name, :last_name, :email, :username
  attr_reader :user_id
  attr_writer :password

  # This initializer method runs first (so no need to write attributes)
  def initialize(first_name, last_name, email, username, password)
    @user_id = rand(1..20000)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def get_info
    puts @user_id
    puts @username
    puts "#{@first_name} #{@last_name}"
    puts @email
  end

  def get_password
    puts @password
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

  


user1 = User.new("John", "Doe", "johndoe@example.com", "astroiddestroyer", "password123")
user1.get_info
# user1.get_password # to get the password i wrote the method (otherwise not possible)
# user1.password # NoMethodError

 
print "-" * 30
puts 

user2 = User.new("William", "Smith", "williamsmith@example.com", "oscarslapper", "secretickles")
user2.get_info


puts user1.full_name
user1.last_name = user2.last_name # changed doe to smith
puts user1.full_name

# smith to jamitia
user2.last_name = "jamitia"
puts user2.full_name
puts user1.full_name # but here it persists (no shallow copy)



