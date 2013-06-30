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

  def destroy
    video = Video.find(params[:id])
    video.destroy
    flash[:notice] = "Video (#{video.title}) deleted successfully"
    redirect_to videos_path
  end

	def edit
		@video = Video.find(params[:id])
	end

  def index
    @videos = Video.order("created_at desc")
  end

  def new
  	@video = Video.new
  end

  def show
  	@video = Video.find(params[:id])
  end

  def update
  	@video = Video.find(params[:id])
  	if @video.update_attributes(params[:video])
  	 flash[:notice] = 'Thanks for updating the video!'
  	 redirect_to @video
    else
      render 'edit'
    end
  end


end
