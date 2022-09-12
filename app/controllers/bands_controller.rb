class BandsController < ApplicationController

    def index 
        render json: Band.all
    end
    
    def show 
        band = Band.all.find_by(id: params[:id])
        if band 
            render json: band, include: '**'
        else
            render json: {"errors": "Band not found"}, status: :not_found
        end
    end
    
end
