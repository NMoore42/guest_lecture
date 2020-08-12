require 'pry'

class Student
  attr_reader :present, :prepared

  def initialize(student_hash)
    @present = student_hash[:present]
    @prepared = student_hash[:prepared]
  end

  def student_status
    if self.present && self.prepared
      "Your child is a exemplory student!"
    else
      "We're going to need to have a conversation regarding your child..."
    end
  end

end

student_one = Student.new(present: true, prepared: true)

binding.pry
0
