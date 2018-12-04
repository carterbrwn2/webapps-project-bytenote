Rails.application.routes.draw do
  get '/games', to: 'games#index'

  get '/themes', to: 'themes#index'
  get '/set_stylesheet', to: 'themes#index'
  get '/theme_sheets/default_theme.css', to: 'themes#index'
  get '/theme_sheets/blue_stylesheet.css', to: 'themes#index'
  get '/theme_sheets/green_stylesheet.css', to: 'themes#index'

  devise_for :users
  resources :themes
  resources :notebooks
  resources :notes, :except => [:index]
  resources :greetings, :only => [:index]
  root 'greetings#index'
end

