Iconfs::Application.routes.draw do

  devise_for :users, defaults: {format: :json}

  resources :schedules_events, defaults: {format: :json}


  resources :users_meetings, defaults: {format: :json}


  resources :users_documents, defaults: {format: :json}


  resources :days, defaults: {format: :json}


  resources :tracks, defaults: {format: :json}


  resources :buildings, defaults: {format: :json}


  resources :floors, defaults: {format: :json}


  resources :meetings, defaults: {format: :json}


  resources :favourites, defaults: {format: :json}


  resources :schedules, defaults: {format: :json}


  resources :pis, defaults: {format: :json}


  resources :rooms, defaults: {format: :json}


  resources :documents, defaults: {format: :json}


   resources :notes, defaults: {format: :json}


  resources :events, defaults: {format: :json}


  resources :users, defaults: {format: :json}


  get 'admin/inipage'


  root :to => 'admin#inipage'

    # session / login / logout
  #  resource :photographer_session
  #  match '/login' => 'photographer_sessions#new', :as => :login
  #  match '/logout' => 'photographer_sessions#destroy', :as => :logout
  #  resource :user
  #  resources :photographer_password_resets
end
