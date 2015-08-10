Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  # get 'users/new'
  # get 'users/create'
  # get 'users/show'

#user signup routes
get "/signup", to: "users#new"
get"/profile", to: "users#show"
resources :users, only: [:create]


#sessions routes
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
post "", to: "sessions#create"
resources :sessions, only: [:create]


#posts
resources :posts, except: [:index]

root "posts#index"

end
