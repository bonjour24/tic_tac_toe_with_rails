Rails.application.routes.draw do
  root 'pages#home'
  get '/games',to: 'pages#games'
  get '/highscores',to: 'pages#highscores'
  post '/played', to: 'pages#played'
  get '/playervs', to: 'pages#playervs'
  get 'home/games'
  get 'home/highscores'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
