namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Client.create!(client_id: 1)
    99.times do |n|
      client_id = "#{n+1}"
      User.create!(client_id: client_id)
    end
  end
end