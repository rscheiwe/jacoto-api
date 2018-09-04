module Api
  module V1


    class QueriesController < ApplicationController

      def create
        @query = Query.new(term: params[:searchTerm])
        render json: @query.filter_courses
      end
    end

  end
end
