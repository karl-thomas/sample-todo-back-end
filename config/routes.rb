Rails.application.routes.draw do
  root 'todo#index'
  get 'todo/index', to: 'todo#index'
  get 'todo/new', to: 'todo#index'
  get 'todo/create',to: 'todo#create'
  get 'todo/show/:id',to: 'todo#show'
end
