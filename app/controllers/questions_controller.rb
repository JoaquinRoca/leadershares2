class QuestionsController < ApplicationController

  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:notice] = "Question added successfully"
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.order("created_at desc")
  end

  def new
   @question = Question.new
  end

  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
     flash[:notice] = 'Thanks for updating the question!'
     redirect_to questions_path
    else
      render 'edit'
    end
  end

end
