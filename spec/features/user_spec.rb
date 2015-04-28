require 'rails_helper'

feature 'Managing user' do
  let(:user) {FactoryGirl.build(:user)}
  scenario 'New user can sign up' do
    visit '/'

    first(:link, 'Signup').click
    click_link 'Signup'

    expect(page).to have_text('Signup')

    fill_in 'First name', with: user.first_name
    fill_in 'Last name', with: user.last_name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password Confirmation', with: user.password

    click_button 'Submit'

    expect(page).to have_content("Thank you for signing up #{user.first_name.titlecase}")
    expect(page).to have_content(user.first_name)
    expect(page).to_not have_content(user.last_name)
    expect(page).to have_content(user.email)
  end

  scenario 'can edit user' do
    user = FactoryGirl.create(:user)
    visit '/'

    click_link 'Login'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Login'

    visit user_path(user.id)

    click_link 'Edit'

    fill_in 'Email', with: 'test@example.com'

    click_button 'Submit'

    expect(page).to have_content("Profile was successfully updated.")
  end
end
