describe 'the homepage', type: :feature do
  it 'shows some text' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end

  it 'has two players complete and submit a form, displaying their names' do
    visit '/'
    fill_in 'Player_One', with: 'Ant'
    fill_in 'Player_Two', with: 'Dec'
    click_on 'Submit'
    expect(page).to have_content(/Ant.+Dec/)
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
