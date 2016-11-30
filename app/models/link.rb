require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end

  DataMapper.setup(:default, ENV['postgres://yguqpuecltqvol:dVDxOs5PweFZW4gfQZFBioXlfd@ec2-54-235-182-120.compute-1.amazonaws.com:5432/dajhjne2pud3ei'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper::Logger.new($stdout, :debug)

DataMapper.finalize
DataMapper.auto_upgrade!
