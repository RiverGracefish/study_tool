require 'rails_helper'

feature 'User Authentication' do
  scenario 'allows a user to signup' do
    visit '/'

    expect(page).to have_link('Signup')

    click_link 'Signup'

    fill_in 'First name', with: 'bob'
    fill_in 'Last name', with: 'smith'
    fill_in 'Email', with: 'bob@smith.com'
    fill_in 'Password', with: 'sup3rs3krit'
    fill_in 'Password Confirmation', with: 'sup3rs3krit'

    click_button 'Signup'

    expect(page).to have_text('Thank you for signing up Bob')
    expect(page).to have_text('Signed in as bob@smith.com')
  end

  scenario 'render form if email taken' do
    FactoryGirl.create(:user, email: 'kiss@example.com')
    visit '/'

    click_link 'Signup'

    fill_in 'First name', with: 'kiss'
    fill_in 'Last name', with: 'smith'
    fill_in 'Email', with: 'kiss@example.com'
    fill_in 'Password', with: 'sup3rs3krit'
    fill_in 'Password Confirmation', with: 'sup3rs3krit'

    click_button 'Signup'

    expect(current_path).to    match('/users')
    end

  scenario 'render form if email has wrong format' do
    visit '/'

    click_link 'Signup'

    fill_in 'First name', with: 'kiss'
    fill_in 'Last name', with: 'smith'
    fill_in 'Email', with: 'kissexample'
    fill_in 'Password', with: 'sup3rs3krit'
    fill_in 'Password Confirmation', with: 'sup3rs3krit'

    click_button 'Signup'

    expect(current_path).to    match('/users')
  end

  scenario 'render form if no first name' do
    visit '/'

    click_link 'Signup'

    fill_in 'First name', with: ''
    fill_in 'Last name', with: 'smith'
    fill_in 'Email', with: 'kiss@example.com'
    fill_in 'Password', with: 'sup3rs3krit'
    fill_in 'Password Confirmation', with: 'sup3rs3krit'

    click_button 'Signup'

    expect(current_path).to    match('/users')
  end
end
