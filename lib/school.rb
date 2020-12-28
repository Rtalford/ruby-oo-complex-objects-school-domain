# code here!
require 'pry'
class School 
   attr_reader :school, :roster, :student_name
   attr_writer :school, :roster, :student_name

   def initialize(school)
    @school = school 
    @roster = {}
   end 

   def add_student(student_name, grade)
      #expected: {10=>["AC Slater"]}
      roster[grade] ||= []
      roster[grade] << student_name
   end 

   def grade (grade)
      roster.detect do |a, b| 
         if a == grade
            return b
         end 
      end 
   end 

   def sort 
      new_hash = {}
      roster.each do |a, b|
      new_hash[a] = b.sort
      end 
   new_hash 

   end 

end 