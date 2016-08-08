class Api::V1::UsersController < ApplicationController
  before_action :authenticate_with_token!, only: [:show, :update, :destroy]

  def create
    user = User.new(user_params)
    user.avatar = user.process_avatar(params[:avatar]) if params.has_key?(:avatar)
    if user.save
      render json: user, status: 201, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email, :password, :password_confirmation, :complete_name, :birthday,
      :cellphone, :referall_code, :code_to_refer, :profession, :service_use,
      :address
    )
  end

end
