class ListAllPartiesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    sleep 10
    puts "this is from worker"
  end
end
