require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///crm.db"

class Patron < ActiveRecord::Base
end
