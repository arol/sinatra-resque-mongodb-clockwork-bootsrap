require "bundler/setup"
require "./models/Tweet"
Bundler.require(:default)
require './jobs'
require "./confdb"


class Application < Sinatra::Base

  get '/' do
    "Let's sing"
  end
  
  get '/nou_tweet' do
    @tweet = Tweet.new(
      :screen_name=>"arolet",
      :lat=>1.2238293829382,
      :lon=>10.2238293829382,
      :time=>'03/04/2012 21:43:45',
      :retweets=>25, 
      :status=>"Si no lo veo no lo creo")
    @tweet.save
    "Tweet saved"
  end

end

