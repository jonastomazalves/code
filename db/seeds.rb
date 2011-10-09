# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Adds automatically admin account
    User.create(:username => 'admin', :password => '4dm1n', :password_confirmation => '4dm1n', :created_at => Date.today, :updated_at => Date.today)
