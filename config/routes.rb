Rails.application.routes.draw do
  root to: 'pages#home'

  #Login and logout
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/faq' => 'pages#faq'

  match '/404', to: 'errors#not_found', via: :all
  match '/422', to: 'errors#unacceptable', via: :all
  match '/500', to: 'errors#internal_error', via: :all
end