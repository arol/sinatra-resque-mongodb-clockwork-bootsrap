require 'rubygems'
require 'resque'
require './confdb'
require './app'

handler { |job|
  Resque.enqueue(job)
}

every 1.seconds, TwitterPoll
