module Api
  module V1
    class CountriesController < ApplicationController
      def index
        countries = Country.all
        render json: CountrySerializer.new(countries).serialized_json
      end
      def show
        country = Country.find_by(slug: params[:slug])
        render json: CountrySerializer.new(country).serialized_json
      end
    end
  end
end
