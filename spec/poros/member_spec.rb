require 'rails_helper'

describe "Member PORO" do
  it 'has attributes' do
    member_data = [
                  {
                    "id": "5cf5679a915ecad153ab68fd",
                    "allies": ["Ozai"],
                    "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
                    "name": "Chan (Fire Nation admiral)",
                    "affilliation": "Fire Nation circus"
                  }
    ]

    member = Member.new(member_data)

    expect(member.image).to eq(member_data[:photoUrl])
    expect(member.name).to eq(member_data[:name])
    expect(member.allies).to eq(member_data[:alliees])
    expect(member.affiliation).to eq(member_data[:affiliation])
  end
end
