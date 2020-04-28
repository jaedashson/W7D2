class UsersController < ApplicationController
  before_action :ensure_logged_out, only: [:new, :create]
  before_action :ensure_logged_in, only: [:show]

  def new
    render :new
  end
  
  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      redirect_to user_url(current_user) # Should be the same as @user
    else
      render :new
    end
  end

  def show
    render :show
  end
end