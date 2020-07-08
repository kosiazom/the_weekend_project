Rails.application.routes.draw do
  resources :guest_lists
  resources :djs, only: [:index, :show]
  resources :party_goers
  resources :promoters, only: [:index, :show]
  
  post '/parties/:party_id/party_goers', to: 'party_goers#attend', as: 'attend_party'
  
  
  resources :parties, only: [:index, :show] do
    resources :reviews, except: [:index, :show]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
