class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def show 

		@movie = Movie.find(params[:id])
		
		

		 
	end

	def new
		@movie = Movie.new
	end

	def movie_params
      params.require(:movie).permit(:title, :director, :actor, :year , :genre, :runtime, :rating)
   end

	def create
		@movie = Movie.new(movie_params)

		if @movie.save
			redirect_to movies_path, :notice => "Your Movie was Saved"
		else
			render "new"
		end
	end

	def edit
      @movie = Movie.find(params[:id])
     
   end
   
	def update
		@movie = Movie.find(params[:id])

		if @movie.update_attributes(movie_params)
			redirect_to movies_path, :notice => "Movie Has been Updated"
		else
			render "edit"
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path, :notice => "Your Movie has been deleted"
	end

	
end
