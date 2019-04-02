require "pry"
class School
  attr_accessor :school_roster
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade) != true
       @roster[grade] = []
     end
     @roster[grade] << name
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
  end
end
