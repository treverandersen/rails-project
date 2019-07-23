class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to tloads_path
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def home
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
