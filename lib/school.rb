require 'pry'
class School

attr_reader :roster

	def initialize(school)
		@school = school
		@roster = {}
	end

	def add_student(student, grade)
		if !@roster[grade] 
			@roster[grade] = []
		end
		@roster[grade] << student
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, student|
			student.sort!
		end
	end

end