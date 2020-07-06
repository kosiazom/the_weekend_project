Rails.application.routes.draw do
  resources :guest_lists
  resources :reviews
  resources :djs
  resources :party_goers
  resources :promoters
  resources :parties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
