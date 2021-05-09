class ContentsController < ApplicationController
  def index
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

  private

  def content_params
    params.require(:content).permit(:target_name, :target_info, :target_date, :study_time).merge(user_id: current_user.id)
  end


end
