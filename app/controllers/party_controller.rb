class PartyController < ApplicationController
    def index
        ListAllPartiesJob.perform_later
    end

end
