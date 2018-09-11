class Course < ApplicationRecord

  has_many :user_courses
  has_many :users, through: :user_courses

  def course_json

    {
      id: self.id,
      title: self.title,
      image: self.image,
      summary: self.summary

    }

  end

end
