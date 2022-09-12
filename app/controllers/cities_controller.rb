class CitiesController < ApplicationController
    def index
        render json: City.all
    end

    def show 
        city = City.all.find_by(id: params[:id])
        if city 
            render json: city
        else
            render json: {"errors": "Show not found"}, status: :not_found
        end
    end
end
