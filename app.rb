require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"
end

get '/about' do

	erb :about
end

get '/visit' do

	erb :visit
end

get '/contacts' do

	erb :contacts
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@date_time = params[:date_time]
	@barber = params[:barber]
	@color = params[:color]

	hh = {
		:username => 'Input name',
		:phone => 'Input phone',
		:date_time => 'Input date and time'
	}

	hh.each do |key, value|

		if params[key] == ''
			@error = hh[key]

			return erb :visit
		end

	end

	erb :visit
end
