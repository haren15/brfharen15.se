Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :admins

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/om-foreningen' => 'about#index', as: 'about'
  get '/kontakt' => 'contact#index', as: 'contact'
  get '/ny' => 'ny#index', as: 'ny'

  resources :news_items, path: 'nyheter'
  resources :faqs, path: 'faq'
  resources :blobs
end
