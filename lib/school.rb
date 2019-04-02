# code here!
require 'pry'
class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []    #this makes the key
    @roster[student_grade] << student_name  #the assigns a value to the key
    #binding.pry
  end

  def grade(class_grade)
    @roster[class_grade]  #this calls the grade by calling the roster key equal to class_grade
  end

  def sort
    @roster.each do |grade, students|
      #binding.pry
      students.sort! # grade is the key, we want to sort the VALUES of the keys. using exclamaition point returns the value
    end
  end
end
