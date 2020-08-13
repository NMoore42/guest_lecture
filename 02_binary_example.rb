require 'pry'

class Student
  attr_reader :present, :prepared

  def initialize(student_hash)
    @present = student_hash[:present]
    @prepared = student_hash[:prepared]
  end

  def student_status
    if self.present && self.prepared
      "Your child is an exemplary student!"
    else
      "We're going to need to schedule some time to talk..."
    end
  end

end

student_one = Student.new(present: true, prepared: true)
student_two = Student.new(present: true, prepared: false)

binding.pry
0
