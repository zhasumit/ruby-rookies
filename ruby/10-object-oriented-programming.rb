# Object Oriented Programming 
# uses objects and their interactions to design program

# University 
# so individual student is a object here 
# student : first_name, last_name, age, courses, email, 
# course : course_name, course_id, course_instructor, course_duration
# restrict the program, limit the use of methods and attributes 

class Student 

  # any instance/object has to use the values 
  # attributes of the class are identities of the class 
  # attribute accessors provide the ability to read and write the attribute values
   

  # attr_accessor: BOTH getter and setter methods 
  attr_accessor :first_name, :last_name, :age, :courses, :email
  
  # attr_reader allows reading but not writing (readonly)
  attr_reader :student_id

  # writeonly attribute
  attr_writer :age

  @first_name
  @last_name
  @age
  @courses = []
  student_id = rand(1..500) # this becomes the class definition not the instance 
  @email
  
  def set_studentid
    @student_id = rand(1..500)
  end
  # since using attribute accesor not using getter/setter methods 
  # # setter method 
  # def first_name=(name)
  #   @first_name = name
  # end

  # # getter
  # def first_name
  #   @first_name
  # end

end

student1 = Student.new
puts student1
# prints some student with some location in memory


# we can use this instance to make the functionalities
student1.set_studentid
student1.first_name = "John"
student1.last_name = "Doe"
student1.age = 25
student1.email = "johndoe@example.com"

puts student1.student_id

puts student1.first_name
puts student1.last_name
puts student1.age
puts student1.email
puts student1.student_id






