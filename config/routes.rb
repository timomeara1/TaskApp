TaskApp::Application.routes.draw do

  get "tasks" => 'tasks#index', :as => :tasks
  post "tasks" => 'tasks#create' 
  #get "tasks/new" => 'tasks#new'

  get "tasks/:id" => 'tasks#show', :as => :task
  get "tasks/:id/edit" => 'tasks#edit', :as => :edit_task
  put "tasks/:id" => 'tasks#update', :as => :update_task
  delete "tasks/:id" => 'tasks#destroy'



end
