class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def profile
    render json: current_user.to_json, status: :accepted
  end

  def index
    render json: User.all
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: @user.login_to_json, jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
