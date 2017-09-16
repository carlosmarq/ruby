Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index' => 'welcome#index'
  resources :articles

  root to: 'welcome#index'
end
