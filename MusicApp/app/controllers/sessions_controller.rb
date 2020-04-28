class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(user_params[:email], user_params[:password])

    if @user.nil?
      render :new
    else
      login!(@user)
      redirect_to user_url(current_user)
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end
  
end