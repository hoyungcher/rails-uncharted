module Api
  module V1
    class AttractionsController < ApplicationController
      def index
        attractions = Attraction.all
        render json: AttractionSerializer.new(attractions).serialized_json
      end
      def show
        attraction = Attraction.find_by(slug: params[:slug])
        render json: AttractionSerializer.new(attraction).serialized_json
      end
    end
  end
end
