class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      falsh[:info] = "パスワード再設定のメールを送信しました。"
      redirect_to root_url
    else
      flash.now[:danger] = "Emailが見つかりません。"
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end
end
