module Api
  module V1
    class LocalitiesController < ApplicationController
      def index
        localities = Locality.all
        render json: LocalitySerializer.new(localities).serialized_json
      end
      def show
        locality = Locality.find_by(slug: params[:slug])
        render json: LocalitySerializer.new(locality).serialized_json
      end
    end
  end
end
