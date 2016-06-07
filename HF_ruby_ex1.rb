### HF_ruby_ex1.rb
#
# a number guessing name
# by Joanna M. Rives @jm_rives @jm-rives https://jm-rives.github.io/
# inspired by "Head First Ruby by " by jay McGavren
#
###

puts "Welcome to 'Guess My Number', a game where you guess a randomly selected
number between 1 and 100 in 10 turns or less."
puts "Player, please enter your name here: "

name = gets.chomp.capitalize

puts "Welcome #{name}!" # werks
ran_number = rand(1...100)
# puts number # print debuggin' werks
turn = 0

until turn == 11
    puts "Please guess my number: "
    guess = gets.chomp.to_i
    turn += 1
    if guess > ran_number
        puts "Oops, Your guess was to high."
    elsif guess < ran_number
        puts "Ooops, Your guess was to lo."
    elsif turn == 10
        puts "Sorry, You didn't guess my number. The number was #{ran_number}.
        Thank You for playing"
        break
    else
        puts "Congratulations! You guessed #{guess} in #{turn} turns! Good Job!"
        break
    end
end
