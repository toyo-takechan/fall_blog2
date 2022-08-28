module ApplicationHelper

  def full_title(page_title = '')
    base_title = "FallBlog"
    if page_title.empty?
      base_title
    else
      base_title + "  |  " + page_title
    end
  end

 # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
    @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    current_user = nil
  end
end
