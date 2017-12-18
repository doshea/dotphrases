Rails.application.routes.draw do
  root to: 'pages#home'

  #Login and logout
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/error' => 'pages#error'
  get '/faq' => 'pages#faq'
end
