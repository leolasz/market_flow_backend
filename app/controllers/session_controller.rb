class SessionController < ApplicationController
  #New Session
    def new
      end

  #Create Session
    def create
      user = User.find_by :email => params[:email]
      if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id # Log the user in
        redirect_to root_path
      else
        flash[:error] = "Invalid email address or password"
        redirect_to login_path
      end
    end

  #Destroy Session
    def destroy
      session[:user_id] = nil # Log the user out
      redirect_to root_path
    end
end
