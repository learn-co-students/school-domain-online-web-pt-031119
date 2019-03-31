class School
  attr_accessor :school, :roster, :student, :grades,
  attr_reader :add_student 
  
  roster = []

  def  initialize (school, roster)
  @roster = roster  
  @school = school
  end 
  
  def add_student= (student)
      @add_student = student 
      roster << student
  end 
end
