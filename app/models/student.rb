class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end
  
  def Student.by_name(name)
    Student.where("first_student LIKE? OR last_name LIKE?", "%#{name}%", "%#{name}%")
  end 
end
