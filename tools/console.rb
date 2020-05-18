require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

steven = Student.new("Steven")
sarah = Student.new("Sarah")
eric = Student.new("Eric")

mrs_potts = Instructor.new("Mrs. Potts")
mr_chapel = Instructor.new("Mr. Chapel")
mrs_chapel = Instructor.new("Mrs. Chapel")

test_1 = BoatingTest.new(steven, "Test 1", "failed", mrs_potts)
test_2 = BoatingTest.new(sarah, "Test 2", "passed", mr_chapel)
test_3 = BoatingTest.new(steven, "Test 3", "failed", mr_chapel)
test_4 = BoatingTest.new(eric, "Test 4", "failed", mrs_chapel)
test_5 = BoatingTest.new(sarah, "Test 5", "failed", mrs_chapel)
test_6 = BoatingTest.new(eric, "Test 6", "passed", mr_chapel)
test_7 = BoatingTest.new(steven, "Test 7", "passed", mr_chapel)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

