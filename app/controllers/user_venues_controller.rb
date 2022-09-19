class UserVenuesController < ApplicationController

    def create
        
        find_user = User.find_by(id: session[:user_id])
                                    # session.user_id 
                                    # session.user_id = 4 
                                    # session[:user_id] = find_user 
                                    # params[:keegan] = ":)"
        params[:user_id] = session[:user_id]
        params[:venue_id] = params[:id]
        
        new_user_venue = UserVenue.new(strong_params)
        # byebug

        if new_user_venue.save
            render json: new_user_venue
        else
            render json: {error:new_user_venue.errors.full_messages}
        end
        
        # if new_user.save
          
        #     render json: new_user
        # else
        #     render json: {error: new_user.errors.full_messages}
        # end

    end

    def destroy
        destroyed_venue = UserVenue.find_by!(id: params[:id])
        if destroyed_venue
            destroyed_venue.destroy 
            head :no_content 
        else
            item_not_found
        end
    

    end


    def index
        user_venues = UserVenue.all.filter{|eachUserVenue| eachUserVenue.user_id == session[:user_id]}
        render json: user_venues
    end



    private 

    def strong_params
        params.permit(:user_id, :venue_id)
    end

    def item_not_found
        render json: {error: "item not found"}
    end

end
