class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destory]
    def index
        @tasks = Task.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @task = current_user.tasks.new
    end

    def edit
    end

    def create
        @task = current_user.tasks.create(task_params)
    end
    
    def update
        if @task.save
            redirect_to root_path
        else
            render :new
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
            params.require(:task).permit(:task_name, :task_desc)
        end
end
