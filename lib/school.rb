class School
  attr_accessor :name, :roster,
  attr_reader :add_student 

  def  initialize (name)
  @name = name 
  @roster = {}  
  
  end 
  
  def add_student= (student_name, grade)
    roster[grade] || = []
    roster[grade] << studemt_name 
  end 
  
  def grade(student_grade)
    roster[student_grade]
  end 
  
  def sort 
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = student.sorted
    end 
    sorted
  end
end
