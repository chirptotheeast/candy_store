Rails.application.routes.draw do

  get '/', to: "application#home"
  get '/credits', to: "application#credits"
  get '/candies', to: "candies#index"
  get '/candies/new', to: "candies#new"
  get '/candies/:id', to: "candies#show", as: "candy"
  post '/candies', to: "candies#create"
  get '/candies/:id/edit', to: "candies#edit", as: "edit_candy"
  patch '/candies/:id', to: "candies#update", as: "update_candy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
