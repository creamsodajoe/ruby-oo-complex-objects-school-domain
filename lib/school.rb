class School
    attr_accessor :name, :roster
    def initialize (name)
        @name = name
        @roster = {}
    end
    def add_student (student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end
    def grade (grades)
        roster[grades]
    end
    def sort  
        sorted_out = {} 
        roster.each do |grade, students|
          sorted_out[grade] = students.sort 
        end
        sorted_out
      end
end
