class SessionController < ApplicationController
    include ActionController::Cookies

    def create
    
        
        user_to_login = User.find_by(email: params[:email])
        if user_to_login
          
          if user_to_login.authenticate(params[:password])
            session[:user_id] = user_to_login.id
            render json: user_to_login
          else
            render json: {error: "check your password"}
          end
    
        else
          render json: {error: "Username or Password dont match"}
        end
    end


    def destroy 
        session.delete(:user_id)
        
        render json: {}
    end

    def get_user 
        user_already_loggedin = User.find_by(id: session[:user_id])
        render json: user_already_loggedin
    end
    
    
end




