require 'pry'

class School
  attr_accessor :name, :roster, :add_student, :grade, :sort

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.include?(grade)!= true
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(number)
    @roster.map do |grade,student|
      if grade == number
        return student
      end
    end
  end

  def sort
    new_hash = {}
    @roster.each do |grade,student|
      new_hash[grade] = student.sort
    end
    new_hash
  end
  
end