Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end



# Prefix  Verb    URI Pattern            Controller#Action
# restaurants  GET     /restaurants           restaurants#index
#              POST    /restaurants           restaurants#create
# new_restaurant  GET     /restaurants/new       restaurants#new
# edit_restaurant  GET     /restaurants/:id/edit  restaurants#edit
#  restaurant  GET     /restaurants/:id       restaurants#show
#              PATCH   /restaurants/:id       restaurants#update
#              DELETE  /restaurants/:id       restaurants#destroy
