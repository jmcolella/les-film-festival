class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def index
  end

  def tickets
  end

  def venues
  end

  def winners
    @overall_winner = Movie.overall_winner
    @categories = Category.all
  end

  def contact
  end
end
