Rails.application.routes.draw do
  resources :positions
  resources :halls
  resources :campuses
  resources :votes
  resources :candidates
  resources :user_groups
  resources :groups
  resources :users
  resources :nominees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
