module Api
  module V1

    class CoursesController < ApplicationController

      def index
        render json: Course.all
      end

      def show
        render json: Course.find(params[:id])
      end

    end
  end
end
