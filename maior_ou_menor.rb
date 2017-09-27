puts "Welcome to the guessing game"
puts "What's your name?"
name = gets
"\n\n\n\n\n\n"
puts "Loading game for you, " + name

puts "Choosing a secret number between 0 and 200..."
secret_number = 175

puts "Chosen ... how about guessing our secret number today?"

limit_of_attempts = 6
for try in 1..limit_of_attempts
"\n\n\n\n\n\n"
puts "Try " + try.to_s + " of " + limit_of_attempts.to_s
puts "enter the number"
kick = gets
puts "Did you get it right? You kicked " + kick

right = secret_number == kick.to_i

if right
    puts "You're right"
    break
  else
    bigger = secret_number > kick.to_i
  if bigger
      puts "The secret number is bigger!"
    else
      puts "The secret number is smaller!"
    end
  end
end
