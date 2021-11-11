# Previous Lessons in rubby.rb

# Lesson 15, Reading Files
puts "\nRead\n"
File.open("hello.txt", "r") do |file|
    # puts file.read() # read the whole file
    # puts file.readline() # this reads one line
    # puts file.readchar() # this reads a char
    # puts file.readlines() # reads all lines
    # puts file.readlines()[1] # reads the line at a certain index

    for line in file.readlines()
        puts line
    end
end
# r for read

puts "Another way"
file = File.open("hello.txt", "r")
puts file.read()
file.close()

# Lesson 16, Writing files
puts "\nWrite\n"

File.open("hello.txt", "w") do |text|
    text.write("This will over-write to the file! Check the file!")
end

File.open("hello.txt", "a") do |text|
    text.write("\nThis will be appended to the file! Check the file!")
end

File.open("new_file.html", "w") do |file|
    file.write("<p>This will write a new file if new_file.html doesn't exist</p>")
end

File.open("hello.txt", "r+") do |file|
    file.readline()
    file.write("\nr+ is read & write, check what happens")
end

# Lesson 17, Handling Errors
# Error Example:
num = [1, 2, 3, 4] 
# print num["dog"]
# Uncomment 46

# Handle it by:
begin
    # puts num["dog"]
    print 10/0
rescue TypeError
    # Comment 52, uncomment 51
    puts "Because it's an error, go here"
rescue ZeroDivisionError => e
    # Comment 51, uncomment 52
    puts ("Error message: " + e.to_s)
rescue
    # Try comment 51 & 52
    puts "IDK what error"
end

# Lesson 18, Class & Objects
# Continued in obj.rb