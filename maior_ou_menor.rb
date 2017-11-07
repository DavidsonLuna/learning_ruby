def welcome
  puts "Welcome to the guessing game"
  puts "What's your name?"
  name = gets
  "\n\n\n\n\n\n"
  puts "Loading game for you, " + name
end

def draw_secret_number
  puts "Choosing a secret number between 0 and 200..."
  drawn = 175
  puts "Chosen ... how about guessing our secret number today?"
  drawn
end

def ask_for_a_kick kicks, try, limit_of_try
  "\n\n\n\n\n\n"
  puts "Try " + try.to_s + " of " + limit_of_try.to_s
  puts "Kicks so far: " + kicks.to_s
  puts "enter the number"
  kick = gets
  puts "Did you get it right? You kicked " + kick
  kick.to_i
end

def try_verify secret_number, kick
  right = secret_number == kick

  if right
    puts "You're right"
    return true
  end

  bigger = secret_number > kick
  if bigger
    puts "The secret number is bigger!"
  else
    puts "The secret number is smaller!"
  end
  false
end

welcome
secret_number = draw_secret_number

limit_of_try = 6
kicks = []
total_kicks = 0

for try in 1..limit_of_try
  kick = ask_for_a_kick kicks, try, limit_of_try
  kicks [total_kicks] = kick
  total_kicks = total_kicks + 1
  break if try_verify secret_number,kick
end
