Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  get 'tweets'=>'tweets#index'
  get 'tweets/new'=>'tweets#new'
  post'tweets'=>'tweets#create'
  delete 'tweets/:id'=>'tweets#destroy'
  get   'tweets/:id/edit'  => 'tweets#edit'
  patch   'tweets/:id'  => 'tweets#update'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end