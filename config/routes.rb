Iconfs::Application.routes.draw do

  devise_for :users

  resources :schedules_events


  resources :users_meetings


  resources :users_documents


  resources :days


  resources :tracks


  resources :buildings


  resources :floors


  resources :meetings


  resources :favourites


  resources :schedules


  resources :pis


  resources :rooms


  resources :documents


   resources :notes


  resources :events


  resources :users


  get 'admin/inipage'


  root :to => 'admin#inipage'
end
