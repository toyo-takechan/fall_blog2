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

end
