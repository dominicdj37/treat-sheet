class HomeController < ApplicationController
    def index
        @treats = Treat.all
    end
    
    def create_party
        CreateRandomParyJob.perform_later 
        redirect_to :root
    end

    def destroy
        DeleteAPartyJob.perform_later(params[:id])
        
        redirect_to root_path

        
    end
    
end
