class TwitterController < ApplicationController

def index
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "la0LqGxB3goPU8nXw6RVSooId"
    config.consumer_secret     = "wcBJiFxBJEUGVrQ3Ag6J5RqM9llK0Y1eRO8xkw1qvEwhAk5aO5"
  end

  @twitter_user = client.user(params[:handle]) if params[:handle].present?

end



end
