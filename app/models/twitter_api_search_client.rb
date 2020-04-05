class TwitterApiSearchClient
  require "net/http"
  require "uri"
  require "json"
  # require 'faraday'
  # require 'faraday_middleware'

  TWITTER_SEARCH_ENDPOINT = "https://api.twitter.com/1.1/tweets/search/30day/prod.json"
  BEARER = ENV['BEARER']

  def call(search_word:, from_date:, to_date:)
    params =  {"query" => "#{search_word} lang:ja",
       "maxResults" => "10",
       "fromDate" => "#{from_date}",
       "toDate" => "#{to_date}"
      }

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
  end
end
