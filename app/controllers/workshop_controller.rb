class WorkshopController < ApplicationController
  def index
    @ws = Workshop.all
  end

  def show
    @ws = Workshop.find(params[:id])
  end
end
