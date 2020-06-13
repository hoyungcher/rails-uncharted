module Api
  module V1
    class ThemeAttractionsController < ApplicationController
      def index
        theme_attractions = ThemeAttraction.all
        render json: ThemeAttractionSerializer.new(theme_attractions).serialized_json
      end
      def show
        theme_attraction = ThemeAttraction.find_by(id: params[:id])
        render json: ThemeAttractionSerializer.new(theme_attraction).serialized_json
      end
    end
  end
end
