module V1
  class SessionsController < ApplicationController
    skip_before_action :authenticate_user_from_token!

    # POST /v1/login
    def create
      @user = User.find_for_database_authentication(email: params[:session][:email])
      return invalid_email if @user.blank?
      return invalid_password unless  @user.valid_password?(params[:session][:password])

      sign_in :user, @user
      render json: @user, serializer: SessionSerializer, root: nil
    end

    private

    def invalid_email
      warden.custom_failure!
      render json: { error: "not found" }, status: 404
    end

    def invalid_password
      warden.custom_failure!
      render json: { error: "not found" }, status: 404
    end
  end
end
