class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
        @tasks = Task.all
    end
    def done
        # @task = Task.find(params[:id])
        @task.mark_complete!
    end
    def new
        @task = Task.new
    end
    def create
        @task = Task.create(task_params)
        @task.save
        redirect_to tasks_path
        # redirect_to tasks_path(@task.id)
    end
    def show
        # @task = Task.find(params[:id])
    end
    def edit
        # @task = Task.find(params[:id])
    end
    def update
        # @task = Task.find(params[:id])
        @task.update(task_params)
        # @task.save
        redirect_to tasks_path
        # redirect_to tasks_path(@task.id)
    end
    def destroy
        @task.destroy
        redirect_to tasks_path
    end

    private
    
    # Quels sont les paramètres autoriser dans le controller 
    
    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end
    def set_task
        @task = Task.find(params[:id])
    end
end
