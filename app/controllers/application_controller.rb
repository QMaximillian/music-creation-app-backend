class ApplicationController < ActionController::API
  include ActionController::Serialization

  before_action :authorized
  def encode_token(payload)
    JWT.encode({user_id: @user.id}, 'flatiron')
  end

  def auth_headers
    request.headers['Authorization']
  end

  def decoded_token
    if auth_headers
      token = auth_headers
      begin
        JWT.decode(token, 'flatiron')
      rescue
        nil
      end
    end
  end

  def current_user
    if decoded_token
      payload = decoded_token[0]
      @user = User.find(payload['user_id'])
    else
      nil
    end
  end

  def logged_in
    !!current_user
  end

  def authorized
    render json: {message: 'Invalid Credentials'}, status: :unauthorized unless logged_in
  end
end
