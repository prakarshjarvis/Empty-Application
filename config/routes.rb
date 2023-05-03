Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Saral::Locatable::Engine => "/saral-locatable", :as => 'saral_locatable'
  mount SsoClient::Engine => "/sso_client", :as => "sso_client"
  # Defines the root path route ("/")
  # root "articles#index"
end
