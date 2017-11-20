def welcome
  puts "Welcome to the guessing game"
  puts "What's your name?"
  name = gets.strip
  "\n\n\n\n\n\n"
  puts "Loading game for you, #{name}"
end

def draw_secret_number
  puts "Choosing a secret number between 0 and 200..."
  drawn = 175
  puts "Chosen ... how about guessing our secret number today?"
  drawn
end

def ask_for_a_kick kicks, try, limit_of_try
  "\n\n\n\n\n\n"
  puts "Try #{try} of #{limit_of_try}"
  puts "Kicks so far: #{kicks}"
  puts "enter the number"
  kick = gets.strip
  puts "Did you get it right? You kicked #{kick}"
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
your_score_so_far = 1000

limit_of_try = 5
kicks = []

for try in 1..limit_of_try
  kick = ask_for_a_kick kicks, try, limit_of_try
  kicks << kick

  score_to_lose = (kick - secret_number) / 2.0
  your_score_so_far -= score_to_lose


  break if try_verify secret_number,kick
end

puts "You gained #{your_score_so_far} score."
