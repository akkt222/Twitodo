class TweetsController < ApplicationController

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
