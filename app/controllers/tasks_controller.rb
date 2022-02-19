class TasksController < ApplicationController
    def index
        @tasks = Task.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @task = current_user.tasks.build
    end

    def edit
    end

    def create
        @task = current_user.tasks.build(task_params)
    end
    
    def update
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
