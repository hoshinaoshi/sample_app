module V1
  class UsersController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create]

    def index
      render json: User.limit(50), each_serializer: V1::UserSerializer
    end

    def create
      @user = User.new user_params

      if @user.save!
        render json: @user, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: t("user_create_error") }, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :birthday, :sex, :nickname, :residence, :purpose,
                                   :annual_income, :occupation, :height, :academic_history, :first_dating_spend_cost,
                                   :period_until_dating, :marriage_history, :have_child, :self_introduction,
                                   :exponent_push_token, :os
                                  )
    end
  end
end
