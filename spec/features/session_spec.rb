require 'rails_helper'

feature 'User session' do
  scenario 'User can log out' do
    user = FactoryGirl.create(:user)

    visit '/'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email' , with: user.email
    fill_in 'Password' , with: user.password

    click_button 'Login'
    click_link 'Logout'

    expect(page).to have_link('Login')
    expect(page).to have_content('You logged out successfully')
  end
end
