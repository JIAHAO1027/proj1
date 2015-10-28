Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  # resources :capture, to: 'pokemon#capture'
  # resources :damage, to: 'pokemon#damage'
  # resources :pokemon, to: 'pokemon#new'
  # post '/pokemon/new', to: 'pokemon#new'

  resources :pokemons
  patch '/capture/:id', to: 'pokemons#capture', as: 'capture'
  patch '/damage/:id', to: 'pokemons#damage', as: 'damage'

end
