class SubmissionsController < ApplicationController

  def new
    @submission = current_user.submissions.build
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    if @submission.update_attributes(submissions_params)
      redirect_to @submission

    else
      render 'edit'
    end
  end

  def create
    @submission = current_user.submissions.build(submissions_params)
    if @submission.save
      redirect_to @submission

    else
      render 'new'
    end
  end

  def index
    @submissions = current_user.submissions
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to submissions_path
  end

  private
  def submissions_params
    params.require(:submission).permit( :name, :skill, :email, :phone, :location, :visa, :rate, :availability, :relocation)
  end
end
