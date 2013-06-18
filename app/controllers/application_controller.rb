class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :set_access_control_headers
  #after_filter :after_token_authentication

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end

  #def after_token_authentication
  #	if params[:auth_token].present?
  #		@user = User.find_by_authentication_token(params[:auth_token])
  #		@user.reset_authentication_token!
  #	end
  #end

end
