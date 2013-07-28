Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :media_types


  resources :media_scopes


  resources :media_interests


  resources :sectors


  resources :interests


  resources :expertises


  resources :activities


  resources :user_profiles


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :users
end