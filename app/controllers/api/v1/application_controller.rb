# frozen_string_literal: true

module Api
  module V1
    class ApplicationController < ::ApplicationController
      include Knock::Authenticable

      before_action :authenticate_user

      def jsonapi_class
        Hash.new { |h, k| h[k] = "Api::V1::#{k}Serializer".safe_constantize }
      end
    end
  end
end
