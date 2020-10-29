Rails.application.routes.draw do

  get '/', to: "application#home"
  get '/credits', to: "application#credits"
  get '/candies', to: "candies#index"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
