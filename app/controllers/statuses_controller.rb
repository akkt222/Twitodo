class StatusesController < ApplicationController

  def update
    tweet = Tweet.find_by(tweet_id: params["tweet_id"])
    if tweet.update(status: params["status"])
      redirect_to controller: 'groups', action: 'show', id: tweet.group_identifier
    else
      redirect_to controller: 'groups', action: 'index', notice: "ステータスを変更出来ませんでした"
    end
  end

  private
  def status_params
    params.permit(:status, :tweet_id)
  end

end
