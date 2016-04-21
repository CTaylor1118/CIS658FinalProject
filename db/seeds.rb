# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(name: 'Chris', email: 'taylochr@mail.gvsu.edu', password: 'password', password_confirmation: 'password');
Project.create(name: 'My project 1', image: 'https://www.filestackapi.com/api/file/uxT25NVvSoyv90sBR3Vp', version: 0, user_id: user.id)
Project.create(name: 'My project 2', image: 'https://www.filestackapi.com/api/file/2QHtJvZNRVaJ1eX6leTw', version: 0, user_id: user.id)
Project.create(name: 'My project 2', image: 'https://www.filestackapi.com/api/file/visN5z61RvKAni3z4uNn', version: 0, user_id: user.id)