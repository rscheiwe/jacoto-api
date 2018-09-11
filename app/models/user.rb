class User < ApplicationRecord
  has_secure_password
  has_many :user_courses
  has_many :courses, through: :user_courses
  validates :username, uniqueness: { case_sensitive: false}

  def to_json
    {
      user: {
        id: self.id,
        courses: self.courses,
        avatar: self.avatar,
        bio: self.bio
      }
    }
  end

  def login_to_json
    {
      id: self.id,
      courses: self.courses,
      avatar: self.avatar,
      bio: self.bio
    }
  end

end
