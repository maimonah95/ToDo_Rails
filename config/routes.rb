Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/:id', to:'todos#show'
  get 'pages/home'
   get 'pages/contact'
  
  get 'about', to: 'pages#about'
  root'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
