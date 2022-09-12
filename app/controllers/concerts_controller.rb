class ConcertsController < ApplicationController
    def index
        render json: Concert.all
    end

    def show 
        concert = Concert.all.find_by(id: params[:id])
        if concert 
            render json: concert
        else
            render json: {"errors": "Show not found"}, status: :not_found
        end
    end
end
