# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    
    def initialize(link) 
        @link = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
    end    

    def get_response_body
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end

    def parse_json
        responses = JSON.parse(self.get_response_body)
    end
  end