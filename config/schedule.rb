require './config/enviroment'
# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

#base_path = "/Users/nigel/Documents/Code2/watch_AD"

set :output, { :standard => "#{ROOT}/log/watch.log", :error => "#{ROOT}/log/watch.errors.log" }

every 1.minute do
  command "ruby #{ROOT}/watch.rb"
end
