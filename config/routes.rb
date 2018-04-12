Rails.application.routes.draw do
  resources :relevances
  resources :wish_progresses
  resources :wishes
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#index"
end
