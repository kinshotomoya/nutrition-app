class FoodsController < ApplicationController
  def index
  end

  def search
    @foods = Food.where('name LIKE(?)', "%#{search_params}%")
    # @nutritions = @foods.nutritives
  end

  private

  def search_params
    params.require(:food)[:name]
  end
end
