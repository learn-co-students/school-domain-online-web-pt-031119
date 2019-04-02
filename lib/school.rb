# code here!
 
  class School
   attr_accessor :name, :grade, :roster
 
   
   
 def initialize(name)
   @name = name
   @roster = {}
 end

def add_student(student, grade)
  if @roster.has_key?(grade) 
  @roster[grade] << student
else
  @roster[grade] = [student]
end
end
def grade(grade_list)
   self.roster[grade_list]
end

def sort 
  self.roster.each do |grade, students|
  students.sort!
end

end
   
 end