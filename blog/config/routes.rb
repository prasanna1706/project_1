Rails.application.routes.draw do
  
  get 'comments/_form'
  get 'comments/_comment'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :articles do
  resources :comments
end
  
 
  
  root 'comment#_comment'
 
end
