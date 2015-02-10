
class Greeter
  def greet
  	"Hi"
  end

  def quote tag
  			quotes = {
			:life => [
	  			"The big lesson in life, baby, is never be scared of anyone or anything.",
	  			"I'm gonna live till I die.",
	  			"You may be a puzzle, but I like the way the parts fit."
			],
			:success => [
				"The best is yet to come and won't that be fine.",
				"The best revenge is massive success.",
				"....A simple I love you means more than money...."
			],
			:alcohol => [
				"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
				"Alcohol may be man's worst enemy, but the bible says love your enemy."
			],
			:love => [
				"The cigarettes you light one after another won’t help you forget her."
			]
		}

[
    "<h2>Quotes matching tag: '#{tag}'</h2>",
    "<ul>"
  ].concat(

		quotes[tag.to_sym].sample(1) do |quote|
			"<li><h3>#{quote}</h3></li>"
		end
	).push("</ul>")
  end

  def photo

  end

end

