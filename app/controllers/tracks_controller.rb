class TracksController < ApplicationController
	def index
		@tracks = Track.all
		
	end

	def new
		
	end

	def create
		@track = Track.new(track_params)

		if @track.save
			redirect_to @track
		else
			render text: @track.errors.full_messages
		end
	end

	def show
		@track = Track.find(params[:id])

	end

	private

	def track_params
		params.require(:track).permit(:title, :artist_name, :length)
	end
end
