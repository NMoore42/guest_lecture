require 'pry'

class Student
  attr_reader :present, :prepared

  def initialize(student_hash)
    @present = student_hash[:present]
    @prepared = student_hash[:prepared]
  end

  def student_status
    #If student is present and prepared, returns encouraging message
    #Else returns message asking to talk about student's performance
  end

end

student_one = Student.new(present: true, prepared: true)
student_two = Student.new(present: true, prepared: false)

binding.pry
0
