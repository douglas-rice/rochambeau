# Game: Paper, Rock, Scissors

# Flow of game:

# 1. Have the player pick paper, rock, or scissors.
# 2. Have the computer pick paper, rock, or scissors.
# 3. Compare: paper > rock, rock > scissors, scissors > paper, or tie
# if same.
# 3. Play again?

# constant that keeps track of the available choices
CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts "Welcome to the Rochambeau tournament!"

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper covers rock."
  when 'r'
    puts "Rock crushes scissors."
  when 's'
    puts "Scissors cut through paper."
  end
end

loop do
  # player makes a pick
  begin
    puts "Pick one: (p, r, s):"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  # computer makes a pick
  computer_choice = CHOICES.keys.sample

  # compare
  # Tie game
  if player_choice == computer_choice
    puts "Tie game. Let's go again..."
    next
  # player wins
  elsif (player_choice == 'p' && computer_choice == 'r') ||
        (player_choice == 'r' && computer_choice == 's') ||
        (player_choice == 's' && computer_choice == 'p')
    # method for displaying winning message (passing in winning choice)
    display_winning_message(player_choice)
    puts "You win!"
  # computer wins  
  else
    display_winning_message(computer_choice)
    puts "Computer wins."
  end
puts "Do you want to play again? Press 'y' or 'n' "
  break if gets.chomp.downcase != 'y' # anything user types that does 
                                      # not equal yes will cause break
end

puts "Thanks for playing in the Rochambeau tournament!"
