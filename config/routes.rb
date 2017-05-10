Rails.application.routes.draw do
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  resources :books
  devise_for :users
  #devise_for :users, :controllers => {:registrations => 'user/registrations' }

  root 'books#index'

  get 'explore' => 'books#explore'

  get 'about' => 'books#about'
  get 'contact_us' => 'books#contact_us', path: 'contact-us'

  #get 'users/:id' => 'users#show'
  get 'abc/:id' => 'users#show'

end
