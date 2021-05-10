class ContentsController < ApplicationController
  def index
    @contents = Content.all
    if user_signed_in?
      @my_contents = Content.where(user_id: current_user.id)
    end
    if @contents.present?
    @content = Content.where('id>=?',rand(Content.first.id..Content.last.id)).first
    @content2 = Content.where('id>=?',rand(Content.first.id..Content.last.id)).first
    end
    # if  content.update(study_time:)
    #   redirect_to root_path
    # end
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    end
  end

  def show
    @content = Content.find(params[:id])
    @comment = Comment.new
    @comments = @content.comments.includes(:user)
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if  @content.update(content_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @content = Content.find(params[:id])
    if  @content.destroy
      redirect_to root_path
    end
  end

  def study
    content = Content.find(params[:id])
    remaining = content.study_time -  params[:study_time].to_i
    if content.update(study_time: remaining)
      redirect_to root_path
    end
  end



  private

  def content_params
    params.require(:content).permit(:target_name, :target_info, :target_date, :study_time).merge(user_id: current_user.id)
  end


end
