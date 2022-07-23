class SessionsController < ApplicationController

    def create #login
        user =User.find_by(username: params[:username]) #find user by username
        session[:user_id] = user.id #save user id to session hash
        render json: user #return user as json object
    end

    def destroy 
        session.delete :user_id #remove user id from the session
        head :no_content #Return empty response with no content status
    end

end
