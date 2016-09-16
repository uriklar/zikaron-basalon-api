class ApplicationController < ActionController::API
  before_filter :authenticate_user_from_token!
  before_filter :authenticate_user!

  private

  def authenticate_user_from_token!
    user_token = params[:authentication_token].presence
    user       = user_token && User.find_by_authentication_token(user_token.to_s)

    if user
      sign_in user, store: false
    end
  end
end
