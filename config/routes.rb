Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
resources :tweets,only:[ :index, :new, :create, :destroy, :edit, :update]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end