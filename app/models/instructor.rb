require "pry"
class Instructor
    @@all = [ ] 

    def initialize(name)
        @name = name
        @@all << self 
    end

    
    def self.all
        @@all
    end
    

    def pass_student (student, test_name)#student == instance
       result = Boatingtest.all.find{|test|
        test.student == student.first_name && test.b_test == test_name} #a Boatingtest instance
        if result !=nil
            result.test_status = "passed"
        else 
            Boatingtest.new(student.first_name, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)#student == instance
        result = Boatingtest.all.find{|test|
            test.student == student.first_name && test.b_test == test_name} #a Boatingtest instance
            if result !=nil
                result.test_status = "failed"
            else 
                Boatingtest.new(student.first_name, test_name, "failed", self)
            end
    end


end
