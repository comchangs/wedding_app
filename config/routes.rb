Rails.application.routes.draw do
  
  root to: "couples#welcome"

  get "/login", to: "sessions#new"

  get "/sign_up", to: "couples#new"

  get "/couples/:id", to: "couples#show" , as: "couple"

  get "/sign_out", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"


  resources :couples do 
    resources :registries 
  end

  resources :registries, shallow: true do
    resources :items
    resources :gifts
  end
  


end
