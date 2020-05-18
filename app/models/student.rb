p "*" * 25
p "running 'student.rb'"

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

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end 

    def self.find_student(name)
        self.all.select do |student|
            student.first_name == name 
        end 
    end 

    def grade_percentage
        my_tests = BoatingTest.all.select do |boating_test|
            boating_test.student == self 
        end 
        my_passed_tests = my_tests.select do |boating_test|
            boating_test.status == "passed"
        end
        ((my_passed_tests.count * 1.00) / my_tests.count * 100).round(2)
    end   

end
