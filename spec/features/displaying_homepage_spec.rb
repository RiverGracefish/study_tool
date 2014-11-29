require 'rails_helper'

feature 'displaying homepage' do
  scenario 'display welcome message' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end

# feature 'displaying classlist' do
#   scenario 'display welcome DaVinci students message' do
#     visit 'classlist'
#     expect(page).to have_content('classlist')
#   end
# end
