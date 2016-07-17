Rails.application.routes.draw do
  
  root 'mems#index'
  
  resources :mems do
    collection do
      get 'my'
      get 'inactive'
    end
  end

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
