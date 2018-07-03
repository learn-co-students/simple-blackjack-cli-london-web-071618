def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_deal = deal_card
  second_deal = deal_card
  card_total = first_deal + second_deal
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    third_deal = deal_card
    card_total = third_deal + card_total
  elsif answer == "s"
    card_total = card_total
  else invalid_command
  end
  return card_total
end

def invalid_command
  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_deal = deal_card
  second_deal = deal_card
  card_total = first_deal + second_deal
  display_card_total(card_total)
  until card_total >= 21
    prompt_user
    answer = get_user_input
    if answer == "h"
      third_deal = deal_card
      card_total = third_deal + card_total
      display_card_total(card_total)
    elsif answer == "s"
      card_total = card_total
    else invalid_command
    end
  end
  if card_total > 21
    end_game(card_total)
  end
end
