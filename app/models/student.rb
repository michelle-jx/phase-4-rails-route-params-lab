class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name(name)
    Student.where(first_name.include?(name)).or(Student.where(last_name.include?(name)))
  end
  
end
