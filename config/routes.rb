Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json }, path: '/' do
    # We are going to list our resources here
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy] do
        collection do
          get 'reset_password'
        end
      end
    end

  end

end
