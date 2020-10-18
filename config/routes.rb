Rails.application.routes.draw do
  root 'registrations#index'
  get '/registrations/:id' => 'registrations#show'

  resources :courses
  resources :sections
  resources :students
  resources :semesters
  resources :professors
  resources :departments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
