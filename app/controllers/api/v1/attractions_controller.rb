module Api
  module V1
    class AttractionsController < ApplicationController
      def index
        attractions = Attraction.all
        render json: AirlineSerializer.new(attractions).serialized_json
      end
      def show
        attraction = Attraction.find_by(slug: params[:slug])
        render json: AirlineSerializer.new(attraction).serialized_json
      end
    end
  end
end
