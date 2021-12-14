Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:create, :index, :destroy]
  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  get "lists/:id", to: "lists#show", as: :list
  post "lists", to: "lists#create"
  get "lists/:id/edit", to: "lists#edit"
  patch "lists/:id", to: "lists#update"
  get "lists/:id", to: " list#destroy"
end
