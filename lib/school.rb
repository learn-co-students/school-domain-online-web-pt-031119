# code here!
require "pry"
class School 
  attr_accessor :name , :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    #binding.pry
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(student_grade)
    @roster[student_grade]
  end
  
  def sort
    sorted_list = {}
    
    @roster.each do |grade, student_name|
      sorted_list[grade] = student_name.sort
      #binding.pry
    end
    sorted_list
  end
end