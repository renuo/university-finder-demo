require 'rails_helper'

RSpec.describe UniversitiesController, type: :request do
  describe '#index' do
    before { get root_path }

    it 'returns success http code' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe '#show' do
    let(:university) { create :university }
    before { get university_path(university) }

    it 'returns success http code' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the content' do
      expect(response.body).to include university.name
      expect(response.body).to include university.state
      expect(response.body).to include university.country
      expect(response.body).to include university.web_page
    end
  end
end
