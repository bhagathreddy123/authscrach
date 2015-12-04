Rails.application.routes.draw do
resources :sessions
  resources :users
  root 'home#index'
  get "sign_up", "users#new", :controller => :users,:action => :new
  get "sign_in", "sessions#new",:controller => :sessions, :action => :new
  get "log_out","sessions#destroy",:controller => :sessions,:action => :destroy

end



