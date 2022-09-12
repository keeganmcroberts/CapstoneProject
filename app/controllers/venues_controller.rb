class VenuesController < ApplicationController

    def index
        render json: Venue.all
    end

    def show 
        venue = Venue.all.find_by(id: params[:id])
        if venue 
            render json: venue
        else
            render json: {"errors": "Show not found"}, status: :not_found
        end
    end
end
