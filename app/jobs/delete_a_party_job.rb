class DeleteAPartyJob < ApplicationJob
  queue_as :default
  sidekiq_options retry: 1 

  def perform(partyId)
    # Do something later
    puts "This is the passed party Id #{partyId}"
    
    sleep 4
    party = Treat.find(partyId)
    raise ">>>>>>>>>>>>>>>>>>>>>>>>>>> Whopes cant do that  "
    if party.destroy
      puts 'Object was successfully deleted.'
            redirect_to root_path
        else
          puts 'Something went wrong'
            redirect_to root_path
        end

  end
end
