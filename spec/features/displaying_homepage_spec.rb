require 'rails_helper'

feature 'displaying homepage' do
  scenario 'display welcome message' do
    visit '/'
    expect(page).to have_content('Welcome')

    expect(page).to have_link('Study Exercise')

    click_link 'Study Exercise'
    expect(page).to have_link('Typing Exercises')
    expect(page).to have_link('Ruby on Rails Exercises')

    visit '/'
    expect(page).to have_link('Users List')
    expect(page).to have_link('Useful Sources')
    expect(page).to have_link('Coding Adventure')
    expect(page).to have_link('Events')

    expect(page).to have_link('Signup')
    expect(page).to have_link('Login')
  end
end
