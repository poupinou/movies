


require "dotenv"
Dotenv.load
class SearchMovie

	def initialize(movie)
		@movie = movie
	end


	def login

		Tmdb::Api.key(ENV["MOVIEDBKEY"])
		Tmdb::Api.language("fr")

	end

	def search

		@search = Tmdb::Search.new
		@search.resource('movie') # determines type of resource
		@search.query(@movie) # the query to search against
		@search.fetch # makes request

	end

	def perform

		login
		search

	end


end