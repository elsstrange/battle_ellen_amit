def sign_in_and_play(player_one:, player_two:)
  visit '/'
  fill_in 'player_one_name', with: player_one
  fill_in 'player_two_name', with: player_two
  click_button 'submit'
end

def attack
  click_button 'attack'
end

def attack_and_continue
  attack
  click_button 'ouch'
end

# # config.yaml
# { 
#   registrations: {
#     submit_button: 'Go!'
#   }

  
  
# }
