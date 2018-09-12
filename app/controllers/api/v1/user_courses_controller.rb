class Api::V1::UserCoursesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  # def index
  #   @user_courses = UserCourse.all.includes(:user).as_json(include: { user: { only: [:username] } })
  # end

  def create
    # @user_course = UserCourse.new(user_course_params)
    @user_course = UserCourse.create(user_course_params)
    if @user_course.valid?
      # byebug
      render json: @user_course.course.course_json, status: :accepted
    else
      UserCourse.find_by(user_course_params).destroy
      render json: {error: 'removed course from your favorites', data: user_course_params}, status: :not_accepted
    end
  end

  private

  def user_course_params
    params.require(:user_course).permit(:id, :user_id, :course_id)
  end
end
