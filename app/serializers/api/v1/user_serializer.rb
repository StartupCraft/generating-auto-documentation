# frozen_string_literal: true

module Api
  module V1
    class UserSerializer < Api::V1::BaseSerializer
      type 'users'

      attributes :first_name,
                 :last_name,
                 :created_at,
                 :updated_at
    end
  end
end
