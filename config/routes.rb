Rails.application.routes.draw do
  get 'site/search'

  resources :artists

  # config/routes.rb
  root 'site#search'
  get 'site/search'
  post 'site/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
