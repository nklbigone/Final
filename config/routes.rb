Rails.application.routes.draw do
  get 'users/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :grades do 
    resources :comments
  end
  resources :courses
  root to: 'pages#home'
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
