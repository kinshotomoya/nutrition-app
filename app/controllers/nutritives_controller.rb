class NutritivesController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def search
    instance_nutritive = Nutritive.new
    @searched_nutritives = Nutritive.order("#{nutritive_params} desc").limit(10)
    @nutritive_name = Nutritive.create_nutritive_name(nutritive_params) if nutritive_params.present?
    @user = User.find(current_user.id)
  end


  private
  def nutritive_params
    params.require(:nutritive)[:value]
  end
end
