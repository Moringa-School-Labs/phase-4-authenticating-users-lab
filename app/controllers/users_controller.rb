class UsersController < ApplicationController
    def show 
        user = User.find_by(id: session[:user_id]) #find user in db using the user id from the session hash
        render json: user #render user json object
    end
end
