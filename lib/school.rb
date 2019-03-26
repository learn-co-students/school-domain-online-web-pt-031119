# code here!



class School
  
  attr_accessor :roster
  attr_reader   
  
  def initialize(name)
    @name = name 
    @roster = {}
    end 
    
  def add_student(student,grade)
    if roster[grade] == nil
      roster[grade] = []
    end 
      roster[grade] << student
  end 

  def grade(grade)
    roster.fetch(grade)
  end 

def sort
   roster.each do |grades, names|
     roster[grades] = names.sort
   end
 end
end