# Lesson 1, Print & Puts.
print "Print Doesn't add a"
print " new line"
puts "Puts, give"
puts "new line"
print("You can also use a ()")
puts(" if you want")
puts("Test \"Quotation\"")
puts("Test \nNew Line")

# Lesson 2, Variables, Data Types
text = "String Value"
puts("This prints something from the 'text' variable: " + text)
anything = "See?"
puts("Your variable name can be anything: " + text)

number = 32
num = -12
puts number + num
puts number - num
puts number * num
puts number / num
puts 10 / 3.0 # When Integers (not decimal) meet Float (decimal), the result will be Float

number = 9.623
puts("How to print numbers with text: " + num.to_s)

bool = true
puts bool
bool = false
puts("Hhehe: " + bool.to_s)

# Lesson 3, String Methods
text = "Upcased Letters"
puts text.upcase()
puts "Downcase".downcase()
text = "        Remove Whitespace before and after words           "
puts text.strip()
"Length?".length()
text = "Include something?"
puts text.include? "something"
puts text.include?("haha")

text = "Print a letter according to the index"
puts text[0]
puts text[0, 5]
puts text.index("t")
puts text.index("z")

# Lesson 4, Numbers
number = 32
num = -12
puts("Absolut: " + num.abs().to_s)
puts number.round()
puts number.floor() # Round it down
puts number.ceil() # Round it up
puts Math.sqrt(36)
puts Math.log(1)

# Lesson 5, User Input
print "Enter something: "
name = gets
puts("You've entered: " + name + "lol\n")
print "Again: "
name = gets.chomp()
puts("That's it: " + name + ", you did it")

# Short Review 1, Calculator
# Check calcu.rb

# Short Review 2, Mad Libs
# Check mad.rb

# Lesson 6, Arrays
# Continued in rubby.rb