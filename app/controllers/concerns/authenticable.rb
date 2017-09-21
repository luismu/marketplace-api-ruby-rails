module Authenticable
  # devis methods overwrites
  def current_user
    @current_user ||=User.find_by(auth_token: request.headers['Authorization'])
  end

  # authenticate_with_token! return an json error if user is not signed in
  def authenticate_with_token!
    render json:{errors:"Not authenticated"},status: :unauthorized unless user_signed_in?
  end

  #user_signed_in? returns true if current_user
  def user_signed_in?
    current_user.present?
  end
end