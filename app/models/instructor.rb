p "*" * 25
p "running 'instructor.rb'"

class Instructor

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def pass_student(student, test_name)
        students_test = BoatingTest.all.find do |boating_test|
            boating_test.student == student && boating_test.test_name == test_name 
        end 
        if  students_test == nil  
            students_test = BoatingTest.new(student, test_name, "passed", self)
        else 
            students_test.status = "passed"
        end 
        students_test 
    end 

    def fail_student(student, test_name)
        students_test = BoatingTest.all.find do |boating_test|
            boating_test.student == student && boating_test.test_name == test_name 
        end 
        if  students_test == nil  
            students_test = BoatingTest.new(student, test_name, "failed", self)
        else 
            students_test.status = "failed"
        end 
        students_test 
    end 

end
