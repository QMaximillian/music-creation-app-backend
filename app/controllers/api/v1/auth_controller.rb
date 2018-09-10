class Api::V1::AuthController < ApplicationController

  def login

  end

  private

  def auth_params
    params.require(:user).permit(//neccesary params)
  end
