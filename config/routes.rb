Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    # resources
  end

  scope :api do
    use_doorkeeper
  end

  authenticated :user do
    root to: 'doorkeeper/applications#index', :as => :authenticated_root
  end

  root :to => redirect('/users/sign_in')
end
