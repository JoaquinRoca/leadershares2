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

	def edit
		@video = Video.find(params[:id])
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

  def update
  	@video = Video.find(params[:id])
  	@video.update_attributes!(params[:video])
  	flash[:notice] = 'Thanks for updating the video!'
  	redirect_to @video
  end


end
