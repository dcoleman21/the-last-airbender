class SearchController < ApplicationController
  def index
    @nation = params['nation'].gsub('_', ' ').titleize

    # conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    #
    # response = conn.get("/api/v1/characters") do |req|
    #   req.params[:affiliation] = nation
    # end
    # @members = JSON.parse(response.body, symbolize_names: true)
    @members = AirbenderService.new.nation_members(params['nation'])
  end
end
