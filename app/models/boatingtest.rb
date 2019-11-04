require "pry"
class BoatingTest
    attr_reader :student, :b_test, :instructor
    attr_accessor :test_status
    @@all = [ ]
    def initialize(student,b_test,test_status, instructor)
        @student= student
        @b_test = b_test
        @test_status = test_status
        @instructor = instructor
        save
    end

    def save
        @@all<<self
    end

    def self.all
        @@all
    end

    
    def self.find_by_student_name(name)
        self.all.select {|bt| bt.student.first_name == name}
    end

    


end