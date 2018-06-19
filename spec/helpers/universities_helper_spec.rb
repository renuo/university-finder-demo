require 'rails_helper'

RSpec.describe UniversitiesHelper, type: :helper do
  describe '#university_label' do
    it 'concats the country and name' do
      university = double(:university,
                          state: 'mystate',
                          country: 'mycountry')

      expect(university_label(university)).to eq 'mycountry • mystate'
    end

    context 'when there is no state' do
      it 'returns the country' do
        university = double(:university,
                            state: nil,
                            country: 'mycountry')

        expect(university_label(university)).to eq 'mycountry'
      end
    end
  end
end
