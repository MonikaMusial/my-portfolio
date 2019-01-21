Rails.application.routes.draw do
  #devise_for :users, path_names: {sign_in: 'login', sign_out: ' logout', sign_up: 'register'}
  root to: 'pages#home'
  devise_for :users
  #, path_names: {sign_in: 'login', sign_out: ' logout', sign_up: 'register'}
 

  get 'angular-items', to: 'portfolios#angular'

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
