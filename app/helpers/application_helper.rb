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

# 渡されたユーザーがカレントユーザーであればtrueを返す
  def current_user?(user)
    user && user == current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    current_user = nil
  end

  # 記憶したURL（もしくはデフォルト値）にリダイレクト
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # アクセスしようとしたURLを覚えておく
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
