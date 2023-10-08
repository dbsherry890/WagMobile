require 'sidekiq/web'

Rails.application.routes.draw do
  post "payment-intent", to: "bookings#intent"

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users
  # controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }

  authenticated :user do
    root to: "pages#dashboard", as: :authenticated_root
  end

  resources :booking_types
  resources :bookings, except: [:index, :new]


  root to: "pages#home"
  
  get 'users/profile'
  
  get '/u/:id', to: 'users#profile'

  # /posts/1/comments/4
  resources :posts do 
    resources :comments
  end
  
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'checkout', to: 'checkouts#show'
  get 'checkout/index', to: 'checkouts#index'
  get 'checkout/success', to: 'checkouts#success'
  get 'billing', to: 'billing#show'
  get 'profile/:id', to: 'users#profile'
  get 'post/:id', to: 'posts#profile'
  get 'dashboard', to: 'pages#dashboard'

  #Scoping the link allows additional booking paths. This will enable us to scope the shared link as/username/bookings/new instead of the default /bookings/new
  get ":booking_link", to: "users#show", as: :user
  scope '/:booking_link', as: :user do
    resources :bookings, only: [:index, :new]
  end

  resources :webhooks, only: :create

end
