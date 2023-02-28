Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: {format: :json} do
      get '/member-data', to: 'members#show'
    end
  end
  devise_for :users,
             path: 'api/v1/users',
             controllers: {
               sessions: 'api/v1/users/sessions',
               registrations: 'api/v1/users/registrations'
             }

end
