# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

5.times do
  FactoryGirl.create(:user)
end

20.times do
  # creates 20 contracts between 20 different housing complexes
  # and 20 different programs
  FactoryGirl.create(:program_contract)
end

100.times do
  FactoryGirl.create(:client)
end

20.times do
  FactoryGirl.create(:apartment, housing_complex: HousingComplex.all.sample)
end