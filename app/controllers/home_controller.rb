class HomeController < ApplicationController
    def index
        @treats = Treat.all
    end
    
    def create_party
        CreateRandomParyJob.perform_later 
        redirect_to :root
    end

    def destroy
        @object = Treat.find(params[:id])
        if @object.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to root_path
        else
            flash[:error] = 'Something went wrong'
            redirect_to root_path
        end
    end
    
end
