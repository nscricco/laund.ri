module SessionsHelper
  def current_user
    session[:id] ? User.find(session[:id]) : nil
  end

  def log_out
    reset_session
  end

  def log_in(user)
    session[:id] = user.id
  end
end