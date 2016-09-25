def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rnum=Random.new
  rnum.rand(1..11)
end

def display_card_total(totalnum)
  puts "Your cards add up to #{totalnum}"
  totalnum
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  reply= gets.chomp
end

def end_game(totalnum)
  puts "Sorry, you hit #{totalnum}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  totalnum = card1 + card2
  display_card_total(totalnum)
  totalnum
end

def hit?(totalnum)
  prompt_user
  reply = get_user_input
  if reply == "s"

  elsif reply == "h"
    totalnum = deal_card + totalnum
  else
    invalid_command
    prompt_user
  end
  totalnum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  #until i die
    welcome
    totalnum=initial_round
    until totalnum>21 do
      totalnum=hit?(totalnum)
      display_card_total(totalnum)
    end
    end_game(totalnum)
end
