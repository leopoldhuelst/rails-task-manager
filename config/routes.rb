Rails.application.routes.draw do
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create', as: 'task_create'

  get 'tasks/:id/edit', to: 'tasks#edit'

  get 'tasks', to: 'tasks#index', as: 'tasks'

  delete 'tasks/:id', to: 'tasks#destroy'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  patch 'tasks/:id', to: 'tasks#update', as: 'task_update'
end
