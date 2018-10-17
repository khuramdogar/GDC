Rails.application.routes.draw do
  # devise_for :users
  # #ActiveAdmin.routes(self)
  scope :api ,defaults: {format: 'json'} do

    devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions',
        passwords: 'users/passwords'
    }

 end
end
