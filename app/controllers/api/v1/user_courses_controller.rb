class Api::V1::UserCoursesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  # def index
  #   @user_courses = UserCourse.all.includes(:user).as_json(include: { user: { only: [:username] } })
  # end

  def create

  end
end
