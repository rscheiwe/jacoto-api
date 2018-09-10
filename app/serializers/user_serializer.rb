class UserSerializer < ActiveModel::Serializer
  # has_many :courses, through: :user_courses
  attributes :id, :username, :avatar, :bio
end
