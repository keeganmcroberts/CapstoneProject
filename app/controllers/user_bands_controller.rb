class UserBandsController < ApplicationController


    def create
        
        find_user = User.find_by(id: session[:user_id])

        if find_user 
                                    # session.user_id 
                                    # session.user_id = 4 
                                    # session[:user_id] = find_user 
                                    # params[:keegan] = ":)"
        params[:user_id] = session[:user_id]
        params[:band_id] = params[:id]
        
        new_user_band = UserBand.new(strong_params)
        # byebug

        if new_user_band.save
            render json: new_user_band
        else
            render json: {error:new_user_band.errors.full_messages}
        end
        
        # if new_user.save
          
        #     render json: new_user
        # else
        #     render json: {error: new_user.errors.full_messages}
        # end
        end

    end


    def index
        user_bands = UserBand.all.filter{ |eachUserBand| eachUserBand.user_id == session[:user_id]}
        render json: user_bands
    end


    def destroy
        user_band_unfollowed = UserBand.find_by!(id: params[:id])
        if user_band_unfollowed
            
            user_band_unfollowed.destroy
            
            head :no_content
        else
            item_not_found
        end
    end

private 

    def strong_params
        params.permit(:user_id, :band_id)
    end

    def item_not_found
        render json: {error: "item not found"}
    end
end
