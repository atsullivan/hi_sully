Rails.application.routes.draw do
  get 'home/index'
  get 'about/index'
  get 'articles/index'
  get 'contact/index'
  root 'home#index'

  resources :articles
end
