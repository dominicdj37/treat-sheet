class CreateRandomParyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    require 'faker'

    puts "creating a random party here"

    party = Treat.new
    party.by_name = Faker::Name.first_name
    party.venue = Faker::Address.street_address
    party.save!

    sleep 4
  end
end
