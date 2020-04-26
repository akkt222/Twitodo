class TweetsController < ApplicationController

  def index
  end

  def create
    result = TwitterApiSearchClient.new
    tweets = result.call(search_word: "Hello", from_date: 202003041136, to_date: 202003041239)

    tweets["results"].each do |tweet|
      Tweet.find_or_create_by!(tweet_id: tweet["id_str"], status: "1")
     end

  end
end
