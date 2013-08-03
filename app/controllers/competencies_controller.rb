class CompetenciesController < ApplicationController

  def create
    @competency = Competency.new(params[:competency])
    if @competency.save
      flash[:notice] = "Competency added successfully"
      redirect_to competencies_path
    else
      render :new
    end
  end

  def edit
    @competency = Competency.find(params[:id])
  end

  def index
    @competencies = Competency.order("created_at desc")
  end

  def new
   @competency = Competency.new
  end

  def show
    @competency = Competency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competency }
    end
  end

  def update
    @competency = Competency.find(params[:id])
    if @competency.update_attributes(params[:competency])
     flash[:notice] = 'Thanks for updating the competency!'
     redirect_to competencies_path
    else
      render 'edit'
    end
  end

end
