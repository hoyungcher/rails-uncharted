module Api
  module V1
    class CategoriesController < ApplicationController
      def index
        categories = Category.all
        render json: CategorySerializer.new(categories).serialized_json
      end
      def show
        category = Category.find_by(slug: params[:slug])
        render json: CategorySerializer.new(category).serialized_json
      end
    end
  end
end
