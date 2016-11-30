require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end

  DataMapper.setup(:default, ENV['postgres://actqppofxlpjjb:jbKNh2ji5nyyWkUgU2Hez6XHld@ec2-54-163-226-30.compute-1.amazonaws.com:5432/dbcqnb3f4lhf7l'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper::Logger.new($stdout, :debug)

DataMapper.finalize
DataMapper.auto_upgrade!
