require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///crm.db"

class Patron < ActiveRecord::Base
end

helpers do
	# If @title is assigned, add it to the page's title

	def title
		if @title
			"#{@title} -- Patron CRM"
		else
			"Patron CRM"
		end
	end
end


get '/' do
	@patrons = Patron.order(created_at: :desc)
	erb :"patrons/index"
end

get '/about' do
	@title = "About Patron CRM"
	haml :"pages/about"
end

delete "/patrons/:id" do
	@patron = Patron.find(paramas[:id]).destroy
	redirect "/"
end

