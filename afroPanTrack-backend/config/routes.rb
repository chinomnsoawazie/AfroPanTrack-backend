Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :barter
  resources :facts
  resources :help
  resources :login, only: [:create]
  resources :quarantine_centre
  resources :reports
  resources :update
  resources :users
  resources :helper


  get 'apikeys', :to => 'users#api_keys'
  get 'users/checkusername/:username', :to => 'users#check_username'
  get 'users/confirm_email/:confirm_token', :to => 'users#confirm_email'

end
