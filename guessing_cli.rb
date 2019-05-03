def run_guessing_game
  greeting
  
  while true
    num = generate_number
    puts 'Guess a number or type exit to stop playing:'
    res = request_input
    if res.to_s.downcase == 'exit' 
      exit
    end
    compare_numbers(num, res)
  end
  puts "Thanks for playing"
end

def greeting
  puts "Welcome to the guessing game!"
  puts "To win correctly guess the randomly generated number between 1 and 10"
  puts "Have fun!!"
end

def generate_number
  return rand(1..10)
end

def request_input
  return gets.chomp
end

def compare_numbers(num, res)
  if num.to_i == res.to_i
    puts "You guessed the correct number!"
  else
    puts "The computer guessed #{num}."
  end
end