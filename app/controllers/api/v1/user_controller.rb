# frozen_string_literal: true

module Api
  module V1
    class UserController < ApplicationController
      def show
        responds_with_resource(current_user)
      end
    end
  end
end
