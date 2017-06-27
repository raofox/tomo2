Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin_user', as: 'rails_admin'
  mount ActionCable.server => '/cable'
  resources :events, only: [:index] 

  resources :subcategories
  
  get "/events/push"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resource :session, only: [:destroy]
      resources :users, only: [:index]
      resource :users, only: [:edit, :update]
      resources :categories, only: [:index]
      resources :user_categories, only: [:create]
      resources :events, only: [:create, :index, :show]
      resources :event_users, only: [:create, :index]
      # resources :subcategories, only: [:index]
    end
end

root 'events#index' 
end
