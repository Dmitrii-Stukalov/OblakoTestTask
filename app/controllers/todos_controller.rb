class TodosController < ApplicationController
  def create
    project = Project.where(title: params[:category]).take
    if project == nil
      project = Project.new(title: params[:category])
      project.save
    end
    todo = Todo.new(text: params[:taskName], project_id: project.id, is_completed: false)
    todo.save
    render json: project
  end
end
