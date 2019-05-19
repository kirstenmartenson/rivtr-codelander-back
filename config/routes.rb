Rails.application.routes.draw do

  namespace :api do

  #SESSIONS
    post "/sessions" => "sessions#create"

  #USERS
    get "/users/me" => "users#show"
    post "/users" => "users#create"
    patch "/users/me" => "users#update"
    delete "/users/me" => "users#destroy"

  #VIDEOS
    get "/videos" => "videos#index"
    post "/videos/:id" => "videos#show"
    patch "/videos/:id" => "videos#update"
    delete "/videos/:id" => "videos#destroy"

  #FAVORITES
    post "/favorites" => "favorites#create" 
    get "favorites" => "favorites#index"
    delete "/favorites/:id" => "favorites#destroy"
  end

end

