require 'mongoid'

class Tweet
  include Mongoid::Document
  field :screen_name
  field :status  
  field :lat
  field :lon
  field :time
  field :retweets
end