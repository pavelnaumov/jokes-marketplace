Rails.application.routes.draw do
  devise_for :users
  root to: "jokes#index"
  namespace :admin do
    patch 'bought_jokes/:id/favorite', to: "bought_jokes#favorite", as: :favorite
    patch 'bought_jokes/:id/unfavorite', to: "bought_jokes#unfavorite", as: :unfavorite
    resources :bought_jokes, only: [:index, :show, :destroy]
    resources :jokes, only: [:index, :destroy, :show, :edit, :update] do
      resources :bought_jokes, only: [:create]
    end
  end
  resources :jokes, only: [:index, :new, :create]
end

