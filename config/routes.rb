Rails.application.routes.draw do
  get 'static/index'

  root to: 'static#index'

  devise_for :users
  get 'rooms/show'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
