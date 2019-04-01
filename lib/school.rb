# code here!
require 'pry'

class School 
  
  
  def initialize(name)
    @name = name #@name is set with the argumetn that is passed through 
    @roster = {} #@roster is set to an empty hash 
    #binding.pry 
  end
  
  def roster
    @roster #empty hash
    #binding.pry 
  end
  
  def add_student(name, grade) #Accepts 2 arguments
    #binding.pry 
    if @roster.include?(grade) == false 
      @roster[grade] = [] 
    end
    @roster[grade] << name 
  end 
  
  def grade(grade)
    #binding.pry 
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
      #binding.pry 
    end 
  end 
end

