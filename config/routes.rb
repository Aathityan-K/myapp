Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'user/sessions', registrations: 'user/registrations' }
  resources :posts do
    resources :comments
    resources :likes
  end
  
  root "posts#index"
  get "home", to: "pages#home"
  get "about", to: "pages#about"

end
