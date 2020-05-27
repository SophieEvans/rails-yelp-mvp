Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :restaurants, only: [:new, :index, :create, :show]
    resources :reviews, only: [:new, :create]
  end

  resources :reviews do
    member do
      get :rating
    end
  end
 end
