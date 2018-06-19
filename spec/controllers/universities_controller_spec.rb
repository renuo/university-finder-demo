require 'rails_helper'

RSpec.describe UniversitiesController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    let(:university) { create :university }

    it 'returns http success' do
      get :show, params: { id: university.to_param }
      expect(response).to have_http_status(:success)
    end
  end
end
