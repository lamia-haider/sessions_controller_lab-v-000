class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    session[:name]
  end


end



# A home page or root route.
# If the user is not logged in, the page should show them a login link.
# If the user is logged in, the page should say, "hi, #{name}", and provide a logout link.
# A login page
# Users can enter their name in a form and click 'login'. Thereafter, the app will refer to them by that name.
# If the user does not enter a name, they are not logged in. Return them to the login page.
