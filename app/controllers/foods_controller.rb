class FoodsController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def search
    # @foods = Food.where('name LIKE(?)', "%#{search_params}%")
    keywords = params.require(:food)[:name].split(/[\p{blank}\s]+/) #ransackは高度な複数検索できる！
    @foods = Food.ransack(name_cont_all: keywords[0..1]).result
    @user = User.find(current_user.id)
    respond_to do |format|
      format.json{
        render json: @foods
      }
      format.html{
      }
    end
  end

  private

  def search_params
    params.require(:food)[:name]
  end
end
