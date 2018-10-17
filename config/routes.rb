Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  scope :api ,defaults: {format: 'json'} do

    namespace :auth do
      get '/check_username',to: 'registrations#check_username'
      post '/signup', to:'registrations#create'
      post '/signin', to:'sessions#create'
      delete '/signout', to:'sessions#signout'
      get '/verify', to:'verifications#validate'
      get '/request_new_verification_pin', to:'verifications#new_pin'
      put '/change_password', to:'passwords#reset'
      post '/reset_password', to: 'passwords#forgot'
      put '/reset_password', to: 'verifications#reset'
      get '/validate', to:'token_validations#validate'
      get '/verify_email', to: 'verifications#confirm', as:'verification'
    end

 end
end
