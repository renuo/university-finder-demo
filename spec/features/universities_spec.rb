require 'rails_helper'

RSpec.describe 'Universities' do
  describe 'index page' do
    before do
      create_list :university, 3
      visit root_path
    end

    it 'has the title' do
      expect(page).to have_content 'Universities list'

      Percy::Capybara.snapshot(page, name: 'Universities list')
    end

    it 'renders a list of universities' do
      University.all.each do |university|
        expect(page).to have_content university.name
      end
    end
  end

  describe 'details page' do
    let(:university) { create :university }

    before do
      visit university_path(university)
    end

    it 'renders the name' do
      expect(page).to have_content university.name
      Percy::Capybara.snapshot(page, name: 'University details page')
    end
  end
end
