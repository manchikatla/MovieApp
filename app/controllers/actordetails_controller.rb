class ActordetailsController < ApplicationController
	def index
		@actordetails = Actordetail.all
	end

	def show
		@actordetail = Actordetail.find(params[:id])
	end

	def new
		@actordetail = Actordetail.new
	end

	def actordetail_params
      params.require(:actordetail).permit(:name, :gender, :dob, :hometown )
   	end

	def create
		@actordetail = Actordetail.new(actordetail_params)

		if @actordetail.save
			redirect_to actordetails_path :notice => "Actor Added Successfully"
		else
			render "new"
		end

	end

	def edit
		@actordetail = Actordetail.find(params[:id])
	end

	def update
		@actordetail = Actordetail.find(params[:id])

		if @actordetail.update_attributes(actordetail_params)
			redirect_to actordetails_path, :notice => "Actors Has been Updated"
		else
			render "edit"
		end
	end


	def destroy
		@actordetail = Actordetail.find(params[:id])
		@actordetail.destroy
		redirect_to actordetails_path, :notice => "Selected Actor has been deleted"
	end

end
