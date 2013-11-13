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
	def pretty_date(time)
		time.strftime("%d %b %Y")
	end

	def patron_show_page?
		request.path_info =~ /\/posts\/\d+$/
	end
	
	def delete_patron_button(patron_id)
		erb :_delete_patron_button, locals: {patron_id: patron_id}
	end
end


get '/' do
	@patrons = Patron.order(created_at: :desc)
	erb :"patrons/index"
end

# The New Patron form sends a POST request (storing data) here
# where we try to create the patron it sent in its params hash.
# of successful, redirect to that patron. Otherwise, render the "patrons/new"
# template where the @patron object will have the incomplete data that the 
# user can modify and resubmit.
#

post '/patrons' do
	@patron = Patron.new(params[:patron])
	if @patron.save
		redirect "patron/#{@patron.id}"
	else
		erb :'patrons/new'
	end
end


get '/about' do
	@title = "About Patron CRM"
	haml :"pages/about"
end

delete '/patrons/:id' do
	@patron = Patron.find(paramas[:id]).destroy
	redirect "/"
end

