Rails.application.routes.draw do
  resources :contact_cards, only: [:create, :show, :update]
  resources :bio_cards, only: [:create, :show, :update]
  resources :actors, only: [:create, :show, :update, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
