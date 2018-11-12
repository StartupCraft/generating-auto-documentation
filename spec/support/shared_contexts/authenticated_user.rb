# frozen_string_literal: true

RSpec.shared_context 'with authenticated_user' do
  let(:authenticated_user) { create(:user) }

  before do
    token = Knock::AuthToken.new(payload: {sub: authenticated_user.id}).token

    header "Authorization", "Bearer #{token}"
  end
end
