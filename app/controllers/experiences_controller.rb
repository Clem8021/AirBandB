class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to experiences_path
    else
      render :new
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :stage_name, :musical_genre, :absurd_requirement, :price_per_day)
  end
end
