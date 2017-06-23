# frozen_string_literal: true

Rails.application.routes.draw do
  resources :messages
  # Route for remove conversation from trash feature. For a future iteration.
  # post '/conversations/:id/remove-from-trash' => 'conversations#remove_from_trash'
  resources :conversations
  resources :recruiters, except: [:destroy]
  resources :engineers, except: [:destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
