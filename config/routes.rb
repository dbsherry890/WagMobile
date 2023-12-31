Rails.application.routes.draw do
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


  #get 'pages/home'
  #get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  get 'billing', to: 'billing#show'
  get 'profile/:id', to: 'users#profile'
  get 'post/:id', to: 'posts#profile'
end
