# frozen_string_literal: true

Rails.application.routes.draw do
  post '/conversations/:id/remove-from-trash' => 'conversations#remove_from_trash'
  resources :conversations
  resources :recruiters, except: [:destroy]
  resources :engineers, except: [:destroy]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
