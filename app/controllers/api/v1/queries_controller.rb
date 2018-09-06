module Api
  module V1

    class QueriesController < ApplicationController

      def create
        if params[:searchTerm]
          @query = Query.new(term: params[:searchTerm])
          render json: @query.filter_courses
        elsif params[:topic]
          # byebug
          @query = Query.new(topic: params[:topic])
          render json: @query.filter_courses
        end
      end
    end

  end
end
