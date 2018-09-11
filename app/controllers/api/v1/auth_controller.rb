class Api::V1::AuthController < ApplicationController

  skip_before_action :authorized, only: [:create]

  def login
    @user = User.find_by(username: auth_params['username'])
    if @user && @user.authenticate(auth_params['password'])
      token = encode_token({user_id: @user.id})
      render json: {user: @user.format, jwt: token}, status: :created
    else
      render json: {message: 'Invalid Username or Password'}, status: :unauthorized
    end
  end

  def reauth
    render json: { user: @user.format }, status: :accepted
    # token = request.headers['Authorization']
    # decoded_token = JWT.decode(token, 'flatiron')
    # user_id = decoded_token[0]['user_id']
    # @user = User.find(user_id)
    # if @user
    #   render json: {user: @user.format}, status: :accepted
    # else
    #   render json: {message: 'Invalid Credentials'}, status: :unauthorized
    # end
  end

  private

  def auth_params
    params.require(:user).permit(:username, :password)
  end
end
