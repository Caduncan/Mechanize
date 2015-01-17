puts "Welcome to this guessing game:"
puts "-" * 30

random_number = rand(10) + 1
won = false


5.times do
puts "Input a number between (1 to 10) >"
number = gets.to_i

if number == random_number
won = true
break
end
end

if won
puts "You win"
else 
puts "You lost the number was #{random_number}"
end
