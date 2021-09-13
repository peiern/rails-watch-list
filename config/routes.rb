Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'movies#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:index, :show, :new, :create]
  end

  resources :bookmarks, only: [:index, :show, :destroy]
  resources :movies, only: [:index]
end
