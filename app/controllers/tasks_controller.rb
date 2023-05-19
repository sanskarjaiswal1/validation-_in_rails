class TasksController < ApplicationController
  before_action :find_task, only:[:edit, :update, :show, :delete]

  def index
    
    @task=Task.all
  end

  def show
    @task=Task.find(params[:id])
    if @task.save

    render json:@task,status:200
    else
      render json:{errors: @task.errors.full_messages},status: 422
    end
  end

  def new
    @task=Task.new
    end

  def create
    
    @task=Task.new(task_params)
    respond_to do |format|
    if @task.save
      debugger
      format.html { redirect_to tasks_path, notice: "User was successfully created." }
     
    else
      format.html { render :new,  status: 422 }           #:unprocessable_entity
    
    end
    end
  end
  
  def edit
  end

  def update
    @task=Task.find(params[:id])
    if @task.update(task_params)
    
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task=Task.find(params[:id])
    # @task.destroy
    if @task.destroy
      render json: @task,status: 200
    else
      render json: {errors:@task.errors.full_messages},status: 422
    end

    
  end


  private
  def task_params
  
    byebug
    params.require(:task).require(:comment).permit(:title,  :description,comment_attributes:%i[like share task_id])
  end

  def find_task
    @task=Task.find(params[:id])
  end 

end
