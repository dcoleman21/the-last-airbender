require 'rails_helper'

describe 'Member PORO' do
  it 'has attributes' do
    member_data = {
        "_id": '5cf5679a915ecad153ab68fd',
        "allies": ['Ozai'],
        "enemies": ['Zuko'],
        "photoUrl": 'https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819',
        "name": 'Chan (Fire Nation admiral)',
        "affiliation": 'Fire Nation circus'
      }

    member = Member.new(member_data)

    expect(member).to be_a(Member)
    expect(member.photo).to be_a(String)
    expect(member.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819')
    expect(member.name).to be_a(String)
    expect(member.name).to eq('Chan (Fire Nation admiral)')
    expect(member.allies).to be_an(Array)
    expect(member.allies).to eq(['Ozai'])
    expect(member.enemies).to be_an(Array)
    expect(member.enemies).to eq(['Zuko'])
    expect(member.affiliation).to be_a(String)
    expect(member.affiliation).to eq('Fire Nation circus')
  end
end
