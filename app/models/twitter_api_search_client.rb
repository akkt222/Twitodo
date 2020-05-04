class TwitterApiSearchClient
  require "net/http"
  require "uri"
  require "json"
  # require 'faraday'
  # require 'faraday_middleware'

  TWITTER_SEARCH_ENDPOINT = "https://api.twitter.com/1.1/tweets/search/30day/prod.json"
  BEARER = ENV['BEARER']

  # def call(hashtag:, members:)
  #   params =  {
  #  "maxResults" => "10",
  #      "hashtag" => "#{hashtag}",
  #     }
  def call(hashtag:)
    params =  {"query" => "#{hashtag} lang:ja",
    "maxResults" => "10",}
    uri = URI.parse(TWITTER_SEARCH_ENDPOINT)

    request = Net::HTTP::Post.new(uri)
    request.content_type = "application/json"
    request["Authorization"] = BEARER
    request.body = params.to_json

    req_options = {
      use_ssl: uri.scheme == "https" 
     }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options ) do |http|
      http.request(request)
    end

    JSON.parse(response.body)
    # a = JSON.parse(response.body)
    # a.select { |result| members.include?(result["results"]["user"]["screen_name"]) }
    # return response.where()
    # results['results']['user'][id_str]
  end
end
