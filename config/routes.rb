Rails.application.routes.draw do
  resources :profile_pictures
  resources :contact_cards
  resources :bio_cards
  resources :actors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
