Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  #root to: "home#index"
  root 'static_pages#index'
  get '/static_pages/:id' => 'static_pages#show'
  resources :static_pages
  resources :courses
  resources :sections
  resources :students
  resources :semesters
  resources :professors
  resources :departments

  get 'search' => "static_pages#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
