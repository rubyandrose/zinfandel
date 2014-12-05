# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def headshot_file(person_name)
  File.new(Rails.root.join("spec/support/fixtures/headshots/#{person_name}.jpg"))
end

users = {}

%w(fred wilma dino pebbles).each do |name|
  users[name.to_sym] = User.create!(email: "no-reply+#{name}@betterment.com", full_name: "#{name.titleize} Flintstone", avatar: headshot_file(name))
end

%w(betty barney bamm-bamm).each do |name|
  users[name.to_sym] = User.create!(email: "no-reply+#{name}@betterment.com", full_name: "#{name.titleize} Rubble", avatar: headshot_file(name))
end
