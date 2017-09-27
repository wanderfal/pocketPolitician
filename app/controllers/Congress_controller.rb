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
      render json: ny_senate
    else
      status 404
    end
  end
end
