 Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", :registrations => 'users/registrations'}
  get 'about' => 'pages#about'
  root 'posts#index'
end
