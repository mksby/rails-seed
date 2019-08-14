Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount API::Base => '/api'
  get 'swagger', to: redirect('/swagger/dist/index.html?url=http://localhost:3000/api/swagger_doc')
end
