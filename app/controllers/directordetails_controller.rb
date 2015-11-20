class DirectordetailsController < ApplicationController
	def index
		@directordetails = Directordetail.all
	end

	def show
		@directordetail = Directordetail.find(params[:id])
	end

	def new
		@directordetail = Directordetail.new
	end

	def directordetail_params
      params.require(:directordetail).permit(:name, :gender, :dob, :hometown )
   	end

	def create
		@directordetail = Directordetail.new(directordetail_params)

		if @directordetail.save
			redirect_to directordetails_path :notice => "Director Successfully Added"

		else
			render "new"
		end

	end

	def edit

		@directordetail = Directordetail.find(params[:id])

	end

	def update
		@directordetail = Directordetail.find(params[:id])

		if @directordetail.update_attributes(directordetail_params)
			redirect_to directordetails_path, :notice => "Directors Has been Updated"
		else
			render "edit"
		end
	end


	def destroy

		@directordetail = Directordetail.find(params[:id])
		@directordetail.destroy
		redirect_to directordetails_path :notice => "Selected Director has been deleted"
	end

end
