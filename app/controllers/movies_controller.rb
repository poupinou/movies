class MoviesController < ApplicationController

	def home

	end

	def search

		@movies = SearchMovie.new(params[:movie]).perform

	end

end
