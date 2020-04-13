class UsersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]  #call before action


#Index
  def index
    @users = User.all

    # @user = User.find_by :name => params[:name]

    # if user.present? && user.authenticate(params[:password])
    #   render json: user
    #   # session[:user_id] = user.id # Log the user in
    #   # redirect_to root_path
    # else
    #   flash[:error] = "Invalid email address or password"
    #   # redirect_to login_path
    # end

    # @users = User.where(nil)
    # filtering_params(params).each do |key, value|
    #     @users = @users.public_send("filter_by_#{key}") if value.present?
    #      render json: @users
    #   end


  end

#New User
  def new
    # @user = User.new
  end

#Create User
  def create
    # @user = User.new user_params
    # if @user.save
    #   session[:user_id] = @user.id
    #   redirect_to
    # else
    #   render :new
    # end
  end


#Private Methods
  private
  # def user_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation)
  # end

  # def filtering_params(params)
  #     params.slice(:id, :email, :password, :admin)
  # end

end
