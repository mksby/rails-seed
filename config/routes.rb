Rails.application.routes.draw do
  root 'home#index'
  
  use_doorkeeper do
    controllers applications: 'oauth_applications'
  end

  devise_for :users, :controllers => { 
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords', 
    :confirmations => 'users/confirmations' }

  devise_scope :user do
    get 'signup', to: 'users/registrations#new'
    get 'signin', to: 'users/sessions#new'
    get 'signout', to: 'users/sessions#destroy'
  end

  mount API::Base => '/api'
  get 'swagger', to: redirect('/swagger/dist/index.html?url=http://localhost:3000/api/swagger_doc')

end
