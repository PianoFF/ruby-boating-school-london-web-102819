require "pry"



class Student
    attr_reader :first_name
    @@all = [] 
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end
  

    def add_boating_test(b_test,test_status, instructor)
        new_boating_test = BoatingTest.new(self,b_test,test_status, instructor)
    end

    def self.find_student(first_name)
        @@all.select{|name| name.first_name == first_name}[0]
    end #[0] to return the first student we find 

    def test_took
        BoatingTest.all.select{|test| test.student == self}
    end
    
    def test_passed
        test_took.select{|each| each.test_status == "passed"}.size
    end

    def grade_percentage
       total = test_took.size
       passed = test_passed
       ((test_passed/total)*100).to_f
    end

end
