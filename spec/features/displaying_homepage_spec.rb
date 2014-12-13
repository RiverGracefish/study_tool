require 'rails_helper'

feature 'displaying homepage' do
  scenario 'display welcome message' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
