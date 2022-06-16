class TodosController < ApplicationController
  def create
    todo = Todo.new(text: params[:text], project_id: params[:project_id], is_completed: false)
    todo.save
    render json: todo
  end
end
