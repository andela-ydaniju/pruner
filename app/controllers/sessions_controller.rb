class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(password: params[:session][:password])
      login user
      redirect_to user
    else
      flash.now[:danger] = "No account with your email/password combination"
      render "new"
    end
  end

  def destroy
  end

  def current_user
    if @current_user.nil?
      @current_user ||= User.find_by(id: session[:user_id])
    else
      @current_user
    end
  end
end
