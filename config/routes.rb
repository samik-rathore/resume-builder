Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'signup' => 'users#signup'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
  
end
