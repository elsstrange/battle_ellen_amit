require 'spec_helper'

describe 'the homepage', type: :feature do

  it 'can submit two players' do
    sign_in_and_play('Amit', 'Ed')
    # puts "page: #{page.body}"
    expect(page).to have_content 'Player1: Amit'
    expect(page).to have_content 'Player2: Ed'
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

 # type: :feature
