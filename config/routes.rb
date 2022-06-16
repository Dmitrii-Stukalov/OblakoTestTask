Rails.application.routes.draw do
  get '/projects', to: 'project#index'
  patch '/projects/:project_id/todos/:todo_id', to: 'project#update'
  post '/todos', to: 'todos#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
