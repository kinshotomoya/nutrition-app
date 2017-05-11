Rails.application.routes.draw do
  get 'users/show'

  get 'recipes/index'

  get 'recipes/new'

  get 'recipes/create'

  get 'recipes/show'

  get 'nutritives/index'

  get 'nutritives/search'

  get 'foods/index'

  get 'foods/search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
