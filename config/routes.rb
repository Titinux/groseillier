Groseillier::Engine.routes.draw do
  devise_for :administrators, path: 'devise', module: 'groseillier/devise', class_name: 'Groseillier::Administrator'

  resources :administrators

  root to: 'dashboard#show'
end
