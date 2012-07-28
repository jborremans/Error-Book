# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Topic.destroy_all


topic = Topic.create(:name => "Routing Error")
topic = Topic.create(:name => "Name Error")
topic = Topic.create(:name => "NoMethodError Error")
topic = Topic.create(:name => "View Template Error")
topic = Topic.create(:name => "Misc")