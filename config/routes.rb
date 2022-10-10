Rails.application.routes.draw do
 post "/login", to: "sessions#create"
 post "/signup", to: "users#create"
 delete "/logout", to: "session#destroy"
 get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
