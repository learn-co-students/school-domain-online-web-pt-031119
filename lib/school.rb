require 'pry'

class School 
  attr_accessor :name, :roster
  attr_reader :add_student
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, grade)
    # If {Hash}[grade] is nonexistent/nil 
    if @roster[grade] == nil 
    # Create an empty array and assign to Hash[grade]'s key
      @roster[grade] = []
      # Then add the student to the empty array 
      @roster[grade] << student
    else 
      # else if the {Hash}[grade] is existent still add the student to the array.
      @roster[grade] << student
    end
  end 
  
  def grade(grade) 
    @roster[grade]
  end
  
  def sort 
    new_hash = {}
    @roster.sort_by do |key, value|
      new_hash[key] = value.sort
    end 
    new_hash
  end 
  
end