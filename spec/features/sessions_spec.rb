require 'rails_helper'

feature 'Login' do
  scenario 'allow existing user to login' do
    user = FactoryGirl.create(:user)

    visit '/'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email' , with: user.email
    fill_in 'Password' , with: user.password

    click_button 'Login'

    expect(page).to_not have_link('Login')
    expect(page).to have_content("Welcome back #{user.first_name.titleize}")
    expect(page).to have_content("Logged in as #{user.email}")
  end

  scenario 'does not allow existing user to login with invalid password' do
    user = FactoryGirl.create(:user, password: 'sudomakemeasanwich')

    visit '/'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'Bad_Password'

    click_button 'Login'
    expect(page).to have_text('Invalid email or password')
  end

  scenario 'does not allow existing user to login with invalid email' do
    user = FactoryGirl.create(:user)

    visit '/'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email', with: 'bad_email@smith.com'
    fill_in 'Password', with: user.password

    click_button 'Login'
    expect(page).to have_text('Invalid email or password')
  end
end

feature 'Logout' do
  scenario 'allow login user to logout' do
    user = FactoryGirl.create(:user, password: 'sudomakemeasandwich')

    visit login_path

    fill_in 'Email' , with: user.email
    fill_in 'Password' , with: user.password

    expect(page).to have_link('Login')

    click_button 'Login'

    expect(page).to_not have_link('Login')
    expect(page).to have_link('Logout')

    click_link('Logout')

    expect(page).to have_content("You logged out successfully")
    expect(page).to_not have_content("Logged in as #{user.email}")
    expect(page).to have_link('Login')
  end
end
