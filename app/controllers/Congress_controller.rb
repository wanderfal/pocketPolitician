require 'net/http'

class CongressController < ApplicationController
  def index
    uri = URI("https://api.propublica.org/congress/v1/115/senate/members.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    # response = Net::HTTP.get(uri, {'X-API-Key':y3spXskaU43BBv4WCh6BazYtzVOToHf1ZUhTiiQc})
    response = http.get(uri, {'X-API-Key':"y3spXskaU43BBv4WCh6BazYtzVOToHf1ZUhTiiQc"})
    data = JSON.parse(response.body)
    # ny_members = data['results'][0]['members'].select do |member|
    #   member['state'] == "NY"
    # end
    ##
    ny_senate = data['results'][0]['members'].select do |member|
      member['state'] == "NY"
    end

    # debugger
    if ny_senate
      ny_senate.each do |member|
        Member.create(
        member_id: member['id'],
        first_name: member['first_name'],
        last_name: member['last_name'],
        facebook_account: member['facebook_account'],
        twitter_account: member['twitter_account'],
        youtube_account: member['youtube_account'],
        party: member['party'],
        next_election: member['next_election'],
        office: member['office'],
        phone: member['phone'],
        fax: member['fax']
        )
      end
      render json: ny_senate
    else
      status 404
    end
  end
end
