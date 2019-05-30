Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create]
    resources :ingredients, only: [:index]
  end

  resources :doses, only: [:destroy]

  resources :ingredients, only: [:index]
end
