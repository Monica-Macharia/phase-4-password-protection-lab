class SessionController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        if user&. authenticate(params[:password])
            session[:user_id] = user_id
            render json: user, status: :created
        else
            render json: {error: "Invalid name or password"}, status: :unauthorized
        end 
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end