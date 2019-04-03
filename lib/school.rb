require 'pry'
class School
  attr_accessor :name, :student_grade, :student, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(grade)
    @roster[grade]
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def sort
    @roster.each do |k, v|
      @roster[k] = v.sort{ |a,b| a<=>b }
    end
  end

end
