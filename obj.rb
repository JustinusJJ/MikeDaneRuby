# Previous Lessons in files.rb

# Lesson 18, Class & Objects
class Book
    attr_accessor :title, :author, :pages_count

    # def initialize()
    #     puts "Creating a Book.."
    # end

    # def initialize(name)
    #     puts (name + " is creating a book..")
    # end

    def initialize(title, author, pages_count)
        @title = title
        @author = author
        @pages_count = pages_count
    end

    def thick?
        if pages_count >= 200
            return true
        end
        return false
    end
end

# Tbh. the explanations is kinda complicated, well basically, it's like a classification.
# You can have many books, but all of those things are collevtively called as "Books".
# If you have, let's say: Game of Thrones, Vol 1. Lord of Rings, Vol 1.
# Game of Thrones, Vol. 1 is an object/instance that belongs to the "Book" Class.
# RIP Grammar & Vocab, sorry, just ask google what the f is class and object in programming.

# Uncomment these & the 2nd/1st initialize but comment the last initialize
# book1 = Book.new("Jean")
# book1.title = "Harry Potter"
# book1.author = "JK Rowling"
# book1.pages_count = 400

# puts book1.title
# puts book1.author
# puts book1.pages_count

# book2 = Book.new("John")
# book2.title = "Lord of the Rings"
# book2.author = "Tolkien"
# book2.pages_count = 323

# puts book2.title
# puts book2.author
# puts book2.pages_count

# book2.title = "King of the Rings"
# puts book2.title
# puts book2.author
# puts book2.pages_count

book1 = Book.new("Heri P", "JK Rolling", 1100)
puts book1.title
puts book1.author
puts book1.pages_count
puts book1.thick?


# Short Review 6, Building a Quiz
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "What color are apples? \n(a) Red \n(b) Blue \n(c) Yellow"
p2 = "What color is the ocean? \n(a) Red \n(b) Blue \n(c) Yellow"
p3 = "What color are bananas? \n(a) Red \n(b) Blue \n(c) Yellow"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "b"),
    Question.new(p3, "c")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts("You got: " + score.to_s + "/" + questions.length().to_s + " questions")
end

run_test(questions)


# Lesson 19, Inheritance
class Chef
    def make_soup
        puts "Making Soup"
    end
    def make_salad
        puts "Making Salad"
    end
end

class SpecialChef < Chef # inherits all chef things
    def make_soup
        puts "Making Special Soup"
    end
    def make_fire
        puts "Making Fire??"
    end
end

chef = Chef.new()
chef.make_soup
chef.make_salad
# chef.make_fire # Chef can't make_fire

puts "\nSpecial Chef\n"
s_chef = SpecialChef.new()
s_chef.make_soup
s_chef.make_salad # method from Chef
s_chef.make_fire

# Lesson 20, Modules
# Methods = Group of similar methods/functions
# Different then class, then don't make objects

module SaySomething
    def sayHi(name)
        puts("Hi, " + name.to_s)
    end
    def sayBye()
        puts "Bye"
    end
end

include SaySomething
SaySomething.sayHi("John")
SaySomething.sayBye()

# You can also call modules to another file,
# Continued in modul.rb