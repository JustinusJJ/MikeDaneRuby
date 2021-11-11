# Previous Lessons in hello.rb

# Lesson 6, Arrays
arr = Array["Kev", "Kar", "Oz", 4, 5]
puts arr
puts ''
puts("First Value in Arr is: " + arr[0])
arr[0] = "Who"
arr[5] = "Her"
puts("New First Value in Arr is: " + arr[0])
puts arr[1, 5]
puts ''

arrayy = Array.new
arrayy[0] = "Mike"
arrayy[3] = "Dave"
puts arrayy 
puts ''

puts "Array Methods"
puts("Length: " + arr.length().to_s)
puts("Any Susan? " + arr.include?("Susan").to_s)

puts "Reversed"
puts arr.reverse()

puts "Sorted"
arr[3] = "Yea"
arr[4] = "Lul"
puts arr.sort() # Have to be same data type and no nil
puts "\n\n\n"

# Lesson 7, Hashes
# Similar to array, but rather than using indexes, we can use 'key's
ha = {
    "Key1" => "First",
    "Key2" => "Second"
}
puts ha["Key1"]

he = {
    1 => 123
}
puts he[1]

# Lesson 8, Methods/ Functions
def sayHi
    puts 'Hi'
end

def sayName(name="Nameless", age=77)
    puts(name + ", age: " + age.to_s)
end

puts 'Test Call sayHi and sayName'
sayHi
sayName("Lulu") # Default will be called if you don't set anythin
puts 'Yep'

# Lesson 9, Return
def cube(n)
    return n * n * n, "Heelow"
    puts "If you have a return, then everything below return will be skipped"
end

puts cube(5)

# Lesson 10, Selection (IF)
ismale = false
istall = false

# and or
if ismale and istall
    puts "if true, then do everything inside before else"
    puts "or if there's no other if/ else, then until end"
elsif ismale or istall
    puts "go change the true and false value if you want"
elsif !ismale
    puts "! means not"
else
    puts "if false, print from else to end"
end

def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else
        return num3
    end
end

print "Num1? "
num1 = gets.chomp().to_f
print "Num2? "
num2 = gets.chomp().to_f
print "Num3? "
num3 = gets.chomp().to_f

puts("Max num is " + max(num1, num2, num3).to_s)

# Short Review 3, Updated Calculator
# Continued in calcu.rb

# Lesson 11, Selection (CASE)
def day_name(day)
    day_name = ""
    
    case day
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    when "sun"
        day_name = "Sunday"
    else
        day_name = "INVALID"
    end

    return day_name
end

# Change to see
puts day_name("mon")

# Lesson 12, Looping (While)
idx = 1
while idx <= 5
    puts "Do everything before end, while the condition is valid"
    puts idx
    idx += 1
    puts "Avoid infinite loops!"
end

# Short Review 4, Guessing Game
# Continued in guess.rb

# Lesson 13, Looping (For)
friends = ["Kev", "Karen", "Oz", "Angela", "Andy"]
for friend in friends
    # You can replace 'friend' with any other naming
    print (friend + " ")
end
puts ""


friends.each do |friend|
    # Similar to for
    print (friend + " ")
end
puts ""

for i in 0..5
    # 0..5 = 0, 1, 2, 3, 4, 5
    print (i.to_s + " ")
end
puts ''

6.times do |x|
    print (x.to_s + " ")
end
puts ''

# Short Review 5, Exponent
def pow(base, pow)
    rs = 1
    pow.times do |i|
       rs = rs * base 
    end

    return rs
end
puts pow(5, 3)

# Lesson 14, Comments
# As You have seen, you can comment using #
# Or block the words u want to comment, then press ctrl + /
=begin
    or use begin end
=end

# Lesson 15, Reading files
# Continued in files.rb
