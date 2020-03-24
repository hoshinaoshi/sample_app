module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :nickname, :profile_image_url, :residence

    def profile_image_url
      "#{EasySettings.s3_bucket}/profile/#{object.main_image}"
    end
  end
end
