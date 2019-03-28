require 'pry'

class School

    attr_accessor :name, :student

    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
       if @roster[grade]
    #    binding.pry 
          @roster[grade] << student
    #      binding.pry 
       else
          @roster[grade] = [student] 
    #      binding.pry 
       end
    end 

    def grade(grade)
        @roster[grade]  
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade, names_array|
            sorted_hash[grade] = names_array.sort
        end
        sorted_hash  
    end 

end 