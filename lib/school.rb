# code here!
class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    sorted_list = {}
    roster.each {|grade, students|
    sorted_list[grade] = students.sort}
  sorted_list
end
end