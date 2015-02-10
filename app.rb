# # app.rb

# require 'sinatra'
# require 'sinatra/reloader'

# require './greeter'

require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'
require './greeter'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  @greeter.quote params[:tag]

end

# default /quote route
get '/quote' do
  @greeter.quote
end

get '/photo' do
	@greeter.photo
end

# # our application's routes


# # return quotes matching a tag
# # get '/quote/:tag' do

# # 	quotes = {
# # 		:life =>[
# # 			"The best revenge is massive success.",
# # 			"The best is yet to come and won't that be fine."
# # 		],
# # 		:love => [
# # 			"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
# # 			"....A simple I love you means more than money....",
# # 		]

# # 	}
# #   # raise an error unless the tag is 'life'
# #   # because sinatra had some good life lessons for us all

# # quotes[params[:tag].to_sym]


# # [
# # "<h2> Quotes matching tag : '#{params[:tag]}"'</h3>',
# # "<ul",
# # "<li> <h3> Quote 1 </h3></li>",
# # "<li> <h3> Quote 2 </h3></li>",
# # "</ul>"

# # end


# before do
#   @greeter = Greeter.new
# end


# get '/hi' do
#   "Hi, I am Frank!  daksdhaksdnngbafd"
# end
# as
# get '/quote/:tag' do
# 	@greeter.quote

#   # quotes = {
#   #   :life => [
#   #     "The best is yet to come.",
#   #     "The best revenge is massive success."
#   #   ],
#   #   :love => [
#   #     "....A simple I love you means more than money....",
#   #     "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
#   #   ]
#   # }

#   # [
#   #   "<h2>Quotes matching tag: '#{params[:tag]}'</h2>",
#   #   "<ul>"
#   # ].concat( #concats an array
#   #   quotes[params[:tag].to_sym].map do |quote| #map goes through
#   #     "<li><h3>#{quote}</h3></li>" #interplelates the quotes and li tags
#   #   end
#   # ).push("</ul>") # pushing it into the <ul> tag and pushing it to a string
# end



# get '/taco' do
# @greeter.greet
# end



# # class Frank
# #   def quote tag
# # 		quotes = {
# # 			:life => [
# # 	  			"The big lesson in life, baby, is never be scared of anyone or anything.",
# # 	  			"I'm gonna live till I die.",
# # 	  			"You may be a puzzle, but I like the way the parts fit."
# # 			],
# # 			:success => [
# # 				"The best is yet to come and won't that be fine.",
# # 				"The best revenge is massive success.",
# # 				"....A simple I love you means more than money...."
# # 			],
# # 			:alcohol => [
# # 				"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
# # 				"Alcohol may be man's worst enemy, but the bible says love your enemy."
# # 			],
# # 			:heartbreak => [
# # 				"The cigarettes you light one after another won’t help you forget her."
# # 			]
# # 		}
# # 		quotes[tag.to_sym].map do |quote|
# # 			"<li><h3>#{quote}</h3></li>"
# # 		end
# # 	.push("</ul>")
# # 	.unshift("<h2>Quotes matching tag: '#{tag}'</h2>")

# #  end
# # end

