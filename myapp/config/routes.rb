Rails.application.routes.draw do
  resources :user_scores
  get 'static_pages/home'

  get 'static_pages/help'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
