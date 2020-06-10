module Api
  module V1
    class ThemesController < ApplicationController
      def index
        themes = Theme.all
        render json: ThemeSerializer.new(themes).serialized_json
      end
      def show
        theme = Theme.find_by(slug: params[:slug])
        render json: ThemeSerializer.new(theme).serialized_json
      end
    end
  end
end
