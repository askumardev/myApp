class Api::V1::TodoListsController < ApplicationController
  def index
    tdlists = TodoList.order("created_at DESC")
    render json: tdlists
  end

  def show
    @todo_list = TodoList.find(params[:id])
    render json: @todo_list 
    # localhost:3000/api/v1/todo_lists/2
  end

  def create
    tdlist = TodoList.create(tdlist_param)
    render json: tdlist
  end

  def update
    tdlist = TodoList.find(params[:id])
    tdlist.update(tdlist_param)
    render json: tdlist
  end

  def destroy
    tdlist = TodoList.find(params[:id])
    tdlist.destroy
    head :no_content, status: :ok
  end

  private
  def tdlist_param
    params.require(:tdlist).permit(:title, :done)
  end
end
