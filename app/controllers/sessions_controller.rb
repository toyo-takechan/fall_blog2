class SessionsController < ApplicationController
  def new
  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
   if user && user.authenticate(params[:session][:password])
    # log_in user
    # params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    # redirect_back_or user
    if user.activated?
      log_in user
      params[:session][:remember_me] == '1'? remember(user) : forget(user)
      redirect_back_or user
    else
      message  = "Account not activated"
      message += "check your email for the activation link."
      flash[:danger] = message
      redirect_to root_url
    end
   else
    flash.now[:danger] = "emailかpassword が正しくありません。"
    render 'new', status: :unprocessable_entity
   end
  end


  def destroy
    log_out if logged_in?
    flash[:success] = "ログアウトしました。"
    redirect_to root_url, status: :see_other
  end
end
