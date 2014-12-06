require 'rails_helper'

feature 'Creating Users' do
  scenario 'allows existing users to login' do
    user = FactoryGirl.create(:user)

    visit '/'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email' , with: user.email
    fill_in 'Password' , with: user.password

    click_button 'Login'
    expect(page).to have_text("Welcome back #{user.first_name.titleize}")
    expect(page).to have_text("Signed in as #{user.email}")
  end
end
