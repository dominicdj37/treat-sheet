class HomeController < ApplicationController
    def index
        @treats = Treat.all
    end
    
    def create_party
        CreateRandomParyJob.perform_later 
        redirect_to :root
    end
end
