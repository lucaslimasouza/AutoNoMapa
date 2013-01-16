AutoNoMapa::Application.routes.draw do
  devise_for :searchers

  devise_for :admins

  devise_for :freelances, :controllers => { :registrations => "registrations"}

  root to: "searches_profiles#new"

  resources :categories

  namespace :freelances do
    resource :profiles
  end

  resources :searches_profiles, only: [:index, :new, :show]

  resources :cities, only: :index

  resources :indications, only: :index do
    get "indicate", on: :member
  end

end
