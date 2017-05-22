Rails.application.routes.draw do
  root 'tops#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users #これを記述していないと、deviseのhelper_methodは使えない！！！！
  resources :foods, only: [:index] do
    collection do
      get 'search'
    end
  end
  resources :nutritives, only: [:index] do
    collection do
      get 'search'
    end
  end

  resources :users, only: [:show, :edit, :update] do
    resources :recipes, only: [:new, :create]
  end
end
