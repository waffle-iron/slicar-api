Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    # We are going to list our resources here
    namespace :v1 do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy] do
        collection do
          get 'reset_password'
        end
      end
    end

  end

  devise_for :users

end
