
require 'pry'
class School 
  attr_reader :roster
  def add_student(student,grade)
    
    if @roster[grade]
      @roster[grade] << student
    else 
      @roster[grade] = [student]
    end
  end
  
  def initialize(name)
  @name = name
  @roster = {}
  end
  
  def grade(grade) 
    @roster[grade]
  end  
  
  def sort
    sroster = {}
     roster.each do |grade, name|
       sroster[grade] = name.sort
     end
     sroster
     
  end
end


