class ConcertDatesController < ApplicationController
    
    def index
        render json: ConcertDate.all
    end





    def create
        
    end
end
