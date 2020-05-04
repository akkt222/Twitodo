class TweetsController < ApplicationController

  def index
  end

  # def create
  #   result = TwitterApiSearchClient.new
  #   tweets = result.call(search_word: "Hello", from_date: 202003041136, to_date: 202003041239)

  #   tweets["results"].each do |tweet|
  #     Tweet.find_or_create_by!(tweet_id: tweet["id_str"], stat]us: "1")
  #   end
  #   redirect_to controller: 'groups', action: 'show', id: @group.id

  # end

  def update
    group = Group.find(params[:format])

    hashtag = group.hashtag

    member = group.users.pluck(:nickname)
    result = TwitterApiSearchClient.new
    tweets = result.call(hashtag: "##{hashtag}")
    # tweets = result.call(hashtag: "##{hashtag}", members: member)

    tweets["results"].each do |tweet|
      Tweet.find_or_create_by!(tweet_id: tweet["id_str"], status: "1", group_identifier: group.id)
    end

    redirect_to controller: 'groups', action: 'show', id: group.id
  end

end
