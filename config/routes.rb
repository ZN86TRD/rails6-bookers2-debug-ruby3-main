Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  
  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :favorite, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update]
  
 
  

end