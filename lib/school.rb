require 'pry'

class School
  attr_reader :school, :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    
    sorted_roster
  end

end
