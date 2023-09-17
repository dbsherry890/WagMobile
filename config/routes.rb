Rails.application.routes.draw do
  resources :booking_types

  
  resources :bookings, except: [:index, :new]
  
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile'

  # /posts/1/comments/4
  resources :posts do 
    resources :comments
  end
  get ":booking_link", to: "users#show", as: :user
  scope '/:booking_link', as: :user do
    resources :bookings, only: [:index, :new]
  end

  #get 'pages/home'
  #get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get 'checkout', to: 'checkouts#show'
  get 'checkout/index', to: 'checkouts#index'
  get 'checkout/success', to: 'checkouts#success'
  get 'billing', to: 'billing#show'
  get 'profile/:id', to: 'users#profile'
  get 'post/:id', to: 'posts#profile'
  get 'dashboard', to: 'pages#dashboard'
end
