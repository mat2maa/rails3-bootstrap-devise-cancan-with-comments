Rails3BootstrapDeviseCancan::Application.routes.draw do

  resources :comments, :only => [:create, :destroy]


  resources :news_posts


  resources :media_types


  resources :media_scopes


  resources :media_interests


  resources :sectors


  resources :interests


  resources :expertises


  resources :activities


  resources :user_profiles,
            :except => [:new]


  resources :home

  devise_for :users, :controllers => { :sessions => 'users/sessions', :registrations => 'users/registrations' }

  devise_scope :user do
    authenticated :user do
      root :to => 'home#index'
    end
    unauthenticated :user do
      root :to => 'home#index'
    end
    root :to => 'home#index'
  end

  resources :users
end