Rails.application.routes.draw do
  get 'tops/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users #これを記述していないと、deviseのhelper_methodは使えない！！！！
  resources :tops, only: [:index]
  resources :foods, only: [:index] do
    collection do
      get 'search'
    end
  end
end
