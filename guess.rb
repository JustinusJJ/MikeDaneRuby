# Previous Lessons in rubby.rb
# Guessing Game

secret_word = "girrafe"
guess = ""
count = 0
limit = 3
out = false

while guess != secret_word and !out
    if count <  limit
        print "Enter Guess: "
        guess = gets.chomp()
        count += 1
    else
        out = true
    end
end

# if out
#     puts "RIP"
# else
#     puts "You're Correct!"
# end

out ? (puts "RIP") : (puts "Yey")
# This is another form of selection