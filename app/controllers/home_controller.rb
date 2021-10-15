class HomeController < ApplicationController
  def index
    url_to_redirect = if user_signed_in?
      edit_user_registration_path
    else
      new_user_session_url
    end
    
    redirect_to url_to_redirect
  end
end