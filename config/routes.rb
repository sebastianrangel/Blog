Rails.application.routes.draw do
   get 'about', to: 'pages#about'
   root "pages#home"
   get 'pages/home', to: 'pages#home', as: 'pages_home'
   get 'pages/about', to: 'pages#about', as: 'pages_about'
   resources :articles
   get 'signup', to: 'users#new'
   resources :users, except: [:new]
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   delete 'logout', to: 'sessions#destroy'
end
