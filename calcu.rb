# Previous Lessons in hello.rb
# Calculator 
print "Enter first number: "
n1 = gets.chomp()
print "Enter 2nd number: "
n2 = gets.chomp()

puts(n1.to_i + n2.to_f)

# Explanation: 
# - First the numbers will be saved to String.
# - to_i will change it into Integer
# - to_f will change it into float
# if you don't use to_i or to_f, ex: 1 + 1 = 11
# if you use to_i for both: 2.2 + 1.4 = 3
# if both use to_f: 2.2 + 1.4 = 3.6
# Remember it, kay?

# Previous Lessons in rubby.rb
# Updated Calculator
print "First Number: "
num1 = gets.chomp().to_f
print "Operator: "
op = gets.chomp()
print "Second Number: "
num2 = gets.chomp().to_f

if op == "+"
    puts (num1 + num2)
elsif op == "-"
    puts (num1 - num2)
elsif op == "*"
    puts (num1 * num2)
elsif op == "/"
    puts (num1 / num2)
else
    puts "Invalid operator"
end