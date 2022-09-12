class UsersController < ApplicationController
    
    rescue_from ActiveRecord::RecordNotFound, with: :item_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :user_did_not_create


    #get to /users
    def index
        render json: User.all
    end

    #get to users/id
    def show 
        user_to_find = User.find_by!(id: params[:id])

        if
            render json: user_to_find
        else
            render json: item_not_found
        end
    end


    #POST TO /users
    def create
        new_user = User.new(strong_params)

        render json: new_user


        if new_user.save
          
            render json: new_user
        else
            render json: {error: new_user.errors.full_messages}
        end

    end


    #SOD controller logic 1:45:00
    #patch to users/id
    def update
        user_profile = User.find_by!(id: params[:id])
        
        if user_profile
            
            if user_profile.update(user_update_params)

                render json: user_profile

            else
                render json: {errors: user_profile.errors.full_messages}
            end
        else
            item_not_found
        end
    end

    #delete to users/id
    def destroy
        user_profile = User.find_by!(id: params[:id])
        if user_profile
            user_profile.destroy(user_update_params)
            head :no_content
        else
            item_not_found
        end
    end



    private
    
    def item_not_found
        render json: {error: "item not found"}
    end

    def user_did_not_create(invalid_user)
        render json: {error: invalid_user.record.errors.full_messages}
        
    end
   
    def strong_params
        params.permit(:email, :password)
    end

    #this is going to be venues and bands 
    def user_update_params
        params.permit(:email, :password)
    end

end
