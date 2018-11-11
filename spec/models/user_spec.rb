require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# frozen_string_literal: true

# frozen_string_literal: true

RSpec.describe 'Current user endpoints' do
  resource 'User' do
    route '/api/v1/user', 'Current user' do
      parameter :include

      get 'Show current user' do
        context 'when user is not authenticated' do
          example 'Responds with 401' do
            do_request

            expect(status).to eq(401)
          end
        end

        context 'when user is authenticated', :auth do
          example 'Responds with 200' do
            do_request

            expect(status).to eq(200)
            expect(response_body).to match_json_schema('v1/user')
          end
        end
      end
    end
end
