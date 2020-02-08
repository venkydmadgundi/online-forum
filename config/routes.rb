Rails.application.routes.draw do
  resources :questions do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  
  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
