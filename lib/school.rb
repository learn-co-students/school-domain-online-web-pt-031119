class School
  
  def initialize (name)
    @name = name
    @roster = {}
  end


 def roster
  @roster
 end

 def add_student (person, grade)
   @roster[grade] ||= []
   @roster[grade] << person
 end
 
 def grade (level)
   @roster[level]
 end
 
 def sort
   new_hash = {}
   @roster.sort_by do |x, y|
     new_hash[x] = y.sort
   end
   new_hash
 end

end
