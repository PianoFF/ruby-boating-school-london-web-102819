require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
cindy = Student.new("Cindy")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

sb = Student.find_student('Spongebob')
# puts "student should be spongebob: #{sb}"

no_crashing = cindy.add_boating_test("Don't Crash 101", "passed", puff) 
power_steering_pass = cindy.add_boating_test("Power Steering 201", "passed", krabs)

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# puts "new test has been added: #{no_crashing}"

power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# puts "if failed, present #{power_steering_failure}"

power_steering_pass = spongebob.add_boating_test("Power Steering 201", "passed", krabs)


# puts "Has spongebob passed? #{power_steering_pass}"

 
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
p "endofpry"#leave this here to ensure binding.pry isn't the last line

