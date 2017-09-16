Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sessions/new' => 'sessions#new', as: :new_session
  post '/sessions' => 'sessions#create', as: :sing_in
  get '/sessions/welcome'
  root to: 'sessions#new'
end
