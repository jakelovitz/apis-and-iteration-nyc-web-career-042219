def welcome
  puts "Welcome to Adam and Jake's Star Wars Character information repository!"
end

def get_character_from_user
  puts "Please input a character you'd like to know more about:"
  character_name = gets.chomp
  character_name.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
