# frozen_string_literal: true

module Api
  module V1
    class UserController < ApplicationController
      def show
        render jsonapi: current_user
      end
    end
  end
end
