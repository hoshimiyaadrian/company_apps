class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destory]
    def index
        @tasks = Task.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @task = Task.new
    end

    def edit
    end

    def create
        @task = Task.create(task_params)
    end
    
    def update
        if @task.update(task_params)
            redirect_to @task
        else
            render 'edit'
        end
    end
    
    def destroy
        @task.destroy
    end
    
    private
        def set_task
            @task = Task.find(params[:id])
        end

        def task_params
            params.require(:task).permit(:task_name, :task_desc, :task_status, :user_id)
        end
end
