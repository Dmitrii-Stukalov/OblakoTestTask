class ProjectController < ApplicationController
  def index
    projects = Project.all
    render json: projects.to_json(:only => [:id, :title, :todos], :include => {:todos => {:only => [:id, :text, :is_completed]}})
  end

  def update
    project = Project.find(params[:project_id])
    todo = project.todos.find_by(id: params[:todo_id])
    todo.is_completed = !todo.is_completed
    todo.save
    render json: todo.to_json(:only => [:id, :text, :is_completed])
  end
end
