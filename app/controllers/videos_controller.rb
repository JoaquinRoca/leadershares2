class VideosController < ApplicationController

	def create
		@video = Video.new(params[:video])
		if @video.save
			flash[:notice] = "Video added successfully"
			redirect_to videos_path
		else
			render :new
		end
	end

  def index
    @videos = Video.all
  end

  def new
  	@video = Video.new
  end

  def show
  	@video = Video.find(params[:id])
  end


end
