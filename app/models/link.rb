require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end

  DataMapper.setup(:default, ENV["https://bookmark-manager-sultan.herokuapp.com/"] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper::Logger.new($stdout, :debug)

DataMapper.finalize
DataMapper.auto_upgrade!
