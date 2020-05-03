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
    # .pluck(:nickname)

    # user = User.find_by(id: current_user.id)
    # @boards = user.following_boards
    # @group = Group.find(params[:group_id])

    result = TwitterApiSearchClient.new
    tweets = result.call(hashtag: "##{hashtag}", members: member)

    tweets["results"].each do |tweet|
      Tweet.find_or_create_by!(tweet_id: tweet["id_str"], status: "1")
    end

    redirect_to controller: 'groups', action: 'show', id: @group.id
  end

end
