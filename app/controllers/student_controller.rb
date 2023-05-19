class StudentController < ApplicationController
  def index
    @student=Student.all
    render json: @student ,status: :ok
  end
  def create
    @u1=student.create(name:"yash",email:"afew@@@")
    render json: @u1 ,status: :ok
  end
end
