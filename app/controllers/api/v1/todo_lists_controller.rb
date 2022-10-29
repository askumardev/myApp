class TodoListsController < ApplicationController
  def index
    tdlists = TodoList.order("created_at DESC")
    render json: tdlists
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
