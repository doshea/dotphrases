Rails.application.routes.draw do
  root to: 'pages#home'

  #Login and logout
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/faq' => 'pages#faq'
  get '/contact' => 'pages#contact'


  resources :users, only: [:new, :create, :show, :update] do
    member do
      # TODO
      # get :favorites
    end
    collection do
      get :account
      get :forgot_password
      get 'reset_password/:password_reset_token' => 'users#reset_password', as: 'reset_password'
      post :send_password_reset
      post :change_password
      post :resetter
    end
  end

  resources :institutions, only: [:index, :show, :destroy]

  match '/404', to: 'errors#not_found', via: :all
  match '/422', to: 'errors#unacceptable', via: :all
  match '/500', to: 'errors#internal_error', via: :all
end