Rails.application.routes.draw do
resources :trips, only: [:show, :index]
resources :trails, only: [:show]
end
