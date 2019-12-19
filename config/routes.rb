Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'authors#index'
  resources :authors, :books

  get "authors", to: "authors#index"
  get "authors/new", to: "authors#new"
  post "authors", to: "authors#create"

  get "authors/:id/edit", to: "authors#edit", as: :author_edit


  patch "authors/:id", to: "authors#update"
  delete "artists/:id", to: "artists#destroy"


  get "authors/:id", to: "authors#show"

  get "books/new", to: "books#new"
  post "books", to: "books#create"




end
