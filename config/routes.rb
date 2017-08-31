Rails.application.routes.draw do
  # get 'comments/index'
  #
  # get 'comment/index'

  # get 'post/new'
  #
  # get 'post/show'
  #
  # get 'post/index'
  #
  # get 'post/edit'
  #
  # get 'photos/new'

  # get 'session/new'
  #
  # get 'pages/home'
  #
  # get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'pages#home' # Replace this with whatever you want your root_path to be. This path is where unauthorized users will be redirected_to.

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :posts
  resources :comments
  resources :photos
  resources :relationships

  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
end
