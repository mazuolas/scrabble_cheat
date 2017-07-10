Rails.application.routes.draw do
  root 'pages#main'
  post '/search', to: 'pages#search'
end
