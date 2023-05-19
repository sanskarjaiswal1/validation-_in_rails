class DemoController < ApplicationController
  # layout false
  def index
    @user=User.all
    # render json: @users
  end
  # def show
  # @user=User.find(params[:id])
  # render json: @user
  # end

end
