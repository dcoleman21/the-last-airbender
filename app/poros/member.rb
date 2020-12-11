class Member
  attr_reader :image,
              :name,
              :allies,
              :affiliation

  def initialize(member_data)
    @image = member_data[:photoUrl] ? member_data[:photoUrl] : "Unknown"
    @name = member_data[:name]
    @allies = member_data[:allies]
    @affiliation = member_data[:affiliaton]
  end
end
