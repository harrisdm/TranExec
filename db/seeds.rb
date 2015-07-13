# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Group.destroy_all
PhoneSessionType.destroy_all
WorkhopType.destroy_all

pst1 = PhoneSessionType.create :name => 'Phone Session 1'
pst1 = PhoneSessionType.create :name => 'Phone Session 2'

wst1 = WorkhopType.create :name => 'Workshop 1'
wst2 = WorkhopType.create :name => 'Workshop 2'
wst3 = WorkhopType.create :name => 'Workshop 3'





g1 = Group.create :company => 'Aldi', :name => "Area Managers"
g2 = Group.create :company => 'Aldi', :name => "Store Managers"
g3 = Group.create :company => 'Rebel Sports', :name => "Store Managers"







