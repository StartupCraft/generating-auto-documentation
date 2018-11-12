# frozen_string_literal: true

RSpec.describe 'Users' do
  resource 'Current user endpoint' do
    route '/api/v1/user', 'Current user endpoint' do
      get 'Get current' do
        context 'when user is authenticated', :auth do
          example_request 'Responds with 200' do
            expect(status).to eq(200)
          end
        end

        context 'when user is not authenticated' do
          example_request 'Responds with 401' do
            expect(status).to eq(401)
          end
        end
      end
    end
  end
end
