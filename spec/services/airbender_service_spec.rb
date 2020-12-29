require 'rails_helper'

describe AirbenderService do
  context '#members' do
    it 'returns expected data' do
      service = AirbenderService.new

      results = service.nation_members('fire_nation')
      expect(results).to be_an(Array)
      expect(results.count).to eq(97)

      first_member = results.first

      expect(first_member).to have_attributes(name: 'Chan (Fire Nation admiral)')
      expect(first_member).to have_attributes(photo: nil)
      expect(first_member).to have_attributes(affiliation: 'Fire Nation Navy')
      expect(first_member).to have_attributes(enemies: ['Earth Kingdom'])
      expect(first_member).to have_attributes(allies: ['Ozai'])
    end
  end
end
