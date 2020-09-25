feature 'enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in 'player_one', with: 'Ant'
    fill_in 'player_two', with: 'Dec'
    click_button 'submit'
    expect(page).to have_content("Player One: Ant\nPlayer Two: Dec")
  end
end

# it "signs me in" do
#   visit '/sessions/new'
#   within("#session") do
#     fill_in 'Email', with: 'user@example.com'
#     fill_in 'Password', with: 'password'
#   end
#   click_button 'Sign in'
#   expect(page).to have_content 'Success'
# end
