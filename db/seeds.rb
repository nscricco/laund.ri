# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

customer1 = Customer.create(
  :Name => Faker::Name.name,
  :Street__c => "717 California Street",
  :City__c => "San Francisco",
  :State__c => "CA",
  :Zipcode__c => "94108",
  :PhoneNumber__c => Faker::PhoneNumber.phone_number,
  :Email__c => Faker::Internet.email,
  :Preferences__c => Faker::Company.catch_phrase
)

customer2 = Customer.create(
  :Name => Faker::Name.name,
  :Street__c => "1015 Folsom Street",
  :City__c => "San Francisco",
  :State__c => "CA",
  :Zipcode__c => "94105",
  :PhoneNumber__c => Faker::PhoneNumber.phone_number,
  :Email__c => Faker::Internet.email,
  :Preferences__c => Faker::Company.catch_phrase
)

customer3 = Customer.create(
  :Name => Faker::Name.name,
  :Street__c => "666 Oak Street",
  :City__c => "San Francisco",
  :State__c => "CA",
  :Zipcode__c => "94117",
  :PhoneNumber__c => Faker::PhoneNumber.phone_number,
  :Email__c => Faker::Internet.email,
  :Preferences__c => Faker::Company.catch_phrase
)

5.times {customer1.orders.create(
    :Weight__c => Faker::Number.number(4),
    :Cost__c => Faker::Number.number(4),
    :Type__c => Faker::Company.bs
  )}

5.times {customer2.orders.create(
    :Weight__c => Faker::Number.number(4),
    :Cost__c => Faker::Number.number(4),
    :Type__c => Faker::Company.bs
  )}

5.times {customer3.orders.create(
    :Weight__c => Faker::Number.number(4),
    :Cost__c => Faker::Number.number(4),
    :Type__c => Faker::Company.bs
  )}