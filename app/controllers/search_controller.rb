class SearchController < ApplicationController
  def index
    state = params[:state]

    conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-KEY"] = Rails.application.credentials.propublica[:PROPUBLICA_API_KEY]
    end

    response = conn.get("/congress/v1/members/house/#{state}/current.json")
    json = JSON.parse(response.body, symbolize_names: true)

    json[:results].each do |result|
        Member.find_or_create_by(
          name: result[:name],
          first_name: result[:first_name],
          middle_name: result[:middle_name],
          last_name: result[:last_name],
          role: result[:role],
          gender: result[:gender],
          party: result[:party],
          facebook_account: result[:facebook_account],
          youtube_id: result[:youtube_id],
          seniority: result[:seniority],
          next_election: result[:next_election],
          api_uri: result[:api_uri],
          district: result[:district],
          at_large: result[:at_large]
         )
    end

    @current_state_members = json[:results]

    redirect_to root_path current_state_members: @current_state_members
  end
end
