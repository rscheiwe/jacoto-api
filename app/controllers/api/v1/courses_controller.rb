module Api
  module V1

    class CoursesController < ApplicationController
      skip_before_action :authorized, only: [:index, :show]

      def index
        render json: Course.all.sample(15)
      end

      def show
        render json: Course.find(params[:id])
      end

    end
  end
end
