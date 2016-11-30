require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end

  DataMapper.setup(:default, ENV['postgres://ppclmzoenjnxaw:-6VAY0kYsUz-oFceXg_pvq41dW@ec2-54-243-212-72.compute-1.amazonaws.com:5432/d3t9aq20biaef8'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper::Logger.new($stdout, :debug)

DataMapper.finalize
DataMapper.auto_upgrade!
