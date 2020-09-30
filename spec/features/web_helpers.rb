def sign_in_and_play(player1, player2)
  visit('/')
  fill_in 'Player1', with: player1
  fill_in 'Player2', with: player2
  click_button 'Submit'
end
