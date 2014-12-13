require 'rails_helper'

feature 'Verify links' do
  scenario 'on the study exercises page' do
    visit study_exercises_path

    expect(page).to have_link('Typing Exercises')
    expect(page).to have_link('Ruby on Rails Exercises')
  end


  # scenario 'go to Typing link' do
  #   visit study_exercises_path
  #
  #   click_link 'Typing Exercises'
  #
  #   expect(page).to have_content('Typing Practice for Programmers')
  # end

  # scenario 'go to Ruby on Rails Exercises link' do
  #   visit ruby_on_rails_exercises_path
  #
  #   expect(page).to have_link('How do I get updated class content?')
  #   expect(page).to have_link('Learn Ruby the Hard Way')
  #   expect(page).to have_link('Numbers, Letters and Variables Exercises')
  #   expect(page).to have_link('Methods and Flow Control')
  # end

  scenario 'go to updated class content link' do
    visit updated_content_path

    expect(page).to have_text('Updated Content')
    expect(page).to have_text('How do I get updated class content?')
    expect(page).to have_text('In Terminal, type the following:')
    expect(page).to have_text('>>cd ~/workspace/davinici_coders_*class seccsion*_*class year*/building_the_toolbelt_*class seccsion*_*class year*')
    expect(page).to have_text('>>git pull')
  end

  # scenario 'go to Learn Ruby the Hard Way link' do
  #   visit lrthw_path
  #
  #   expect(page).to have_text('How do I start?')
  #   expect(page).to have_text('Go to homework assignments directory')
  #   click_button 'Show Answer'
  #   expect(page).to have_text('>>cd ~/workspace/davinici_coders_*class session*_*class year*/homework_assignments')
  #   expect(page).to show_text('Making directory "lrthw_exercises"')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('>>mkdir lrthw_exercises')

  #   expect(page).to show_text('Go into the directory')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('cd lrthw_exercises')

  #   expect(page).to show_text('Set up RVM to load version "2.1.2" for this directory')
  #   click_button 'Show Answer'
  #   expect(page).to show_text(">>echo '2.1.2' > .ruby-version")

  #   expect(page).to show_text('Set up RVM to load gemsets for this directory')
  #   click_button 'Show Answer'
  #   expect(page).to show_text(">>echo 'lrthw_exercises' > .ruby-gemset")

  #   expect(page).to show_text('Reload RVM Setting')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('>>cd .')

  #   expect(page).to show_text('Load current directory in RubyMine')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('>>mine .')
  # end
  #
  # scenario 'go to set up Rubocop link' do
  #   visit rubocop_path
  #
  #   expect(page).to show_text('How do I set up Rubocop for lrthw?')

  #   expect(page).to show_text('Go to Gemfile set up source and gem, then bundle and run Rubocop.')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('In RubyMine/Gemfile')
  #   expect(page).to show_text("1|Source 'http://rubygems.org'")
  #   expect(page).to show_text('2|')
  #   expect(page).to show_text("3|gem 'guard-rubocop'")
  #   expect(page).to show_text('4|')

  #   expect(page).to show_text('Bundle!')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('In Terminal')
  #   expect(page).to show_text('>>bundle')

  #   expect(page).to show_text('Initialize Guard')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('>>guard init')

  #   expect(page).to show_text('Run Guard')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('>>guard')
  # end
  #
  # scenario 'go to Readme link' do
  #   visit readme_path
  #
  #   expect(page).to show_text('How do I add Readme? PS, Readme files explain what this project/directory is all about.')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('Comd-N, select file, type "Readme.md" into the box and click OK button')
  #   expect(page).to show_text('Type the following lines into RubyMine/Readme.md')
  #   expect(page).to show_text('1|This project is the exercises I did as')
  #   expect(page).to show_text('2|part of reading through learn Ruby the')
  #   expect(page).to show_text('3|Hard Way by Zed . Shaw.')
  # end
  #
  # scenario 'go to Mark Down Plugin link' do
  #   visit markdown_plugin_path
  #
  #   expect(page).to show_text('How do I Mark Down Plugin to RubyMine?')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('RubyMine/Preferences/Plugins')
  #   expect(page).to show_text('Click the Browse Repositories button')
  #   expect(page).to show_text('Search for markdown')
  #   expect(page).to show_text('Install the markdown plugin')
  #   expect(page).to show_text('Restart RubyMine when prompted')
  #   expect(page).to show_text('Now when you edit Markdown documents, you can see the formatted version')
  # end
  #
  # scenario 'go to Organized link' do
  #   visit organized_path
  #
  #   expect(page).to show_text('Let us keep it organized with different directory chapters')
  #   expect(page).to show_text('How do I add "Intro" directory?')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('Click lrthw_exercises directory')
  #   expect(page).to show_text('Comd-N, select directory')
  #   expect(page).to show_text('Type "Intro" into box, and click OK button')
  #   expect(page).to show_text('Tips: For each chapter create one or more Ruby files to practice.')
  #   expect(page).to show_text('Practice make you a better coder!')
  #   expect(page).to show_text('How do I name my re-do files?')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('If your 1st time name ex1.rb, then 2nd time name it ex1_2.rb')
  # end
  #
  # scenario 'go to run code link' do
  #   visit run_code_path
  #
  #   expect(page).to show_text('How do I run my code?')
  #   click_button 'Show Answer'
  #   expect(page).to show_text('In RubyMine:1)Open Run Menu, then Run. Or 2)Cmnd-Shift-F8')
  #   expect(page).to show_text('Or in Terminal type the following:')
  #   expect(page).to show_text('>>cd ~/workspace/davinici/lrthw_exercises/chapter_1')
  #   expect(page).to show_text('>>ruby ex1.rb')
  # end
end
