class Member
  attr_reader :photo,
              :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(member_data)
    @photo = member_data[:photoUrl]
    @name = member_data[:name]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @affiliation = member_data[:affiliation]
  end
end
