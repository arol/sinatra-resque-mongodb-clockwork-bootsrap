require "bundler/setup"
require "./models/Tweet"
Bundler.require(:default)

require './confdb'

class TwitterPoll
    @queue = :poll

    def self.perform
      @tweet = Tweet.new(
        :screen_name=>"arolet",
        :lat=>1.2238293829382,
        :lon=>10.2238293829382,
        :time=>'03/04/2012 21:43:45',
        :retweets=>25, 
        :status=>"")
      @tweet.save
      
      puts "Tweet saved"
    end
end