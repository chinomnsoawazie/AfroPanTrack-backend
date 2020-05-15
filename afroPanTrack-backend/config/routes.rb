Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :login, only: [:create]
  resources :users
  resources :reports
  get 'apikeys', :to => 'users#api_keys'
  get 'users/checkusername/:username', :to => 'users#check_username'
  get 'users/confirm_email/:confirm_token', :to => 'users#confirm_email'

end
