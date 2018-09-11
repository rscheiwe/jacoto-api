class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :course_id, uniqueness: true

  def to_json
    {
      id: self.id,
      user_id: self.user_id,
      course_id: self.course_id
    }
  end
end
