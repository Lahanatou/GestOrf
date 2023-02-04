Rails.application.routes.draw do
  resources :originalparents
  resources :hostparents
  root 'orphans#top'
  get 'orphans/top'
  resources :orphans
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users, only: [:show]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
