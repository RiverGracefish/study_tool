# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create first_name: 'Grace',
  middle_name: 'River',
  last_name: 'Yu',
  email: 'grace.yu4444@gmail.com',
  password: '1234',
  password_confirmation: '1234',
  wordpress: 'http://rivergracefish.wordpress.com/',
  github: 'https://github.com/RiverGracefish',
  course: '',
  user_type: 'Student',
  bio: ''
