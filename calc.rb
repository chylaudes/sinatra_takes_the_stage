require "sinatra"
require "sinatra/reloader"
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/add/:num1/:num2' do
	# "The sum is #{params[:num1].to_i + params[:num2].to_i}"

	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The sum is #{num1 + num2}"


end
get '/multiply/:num1/:num2' do

	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The product is #{num1 * num2}"


end

get '/subtract/:num1/:num2' do

	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The difference is #{num1 - num2}"


end


get '/divide/:num1/:num2' do

	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	begin
		"The quotient is #{num1 / num2}"
	rescue Exception
		"Don't divide by zero! Dumdum"
	end
	"The quotient is #{num1 / num2}"


end