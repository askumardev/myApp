class Api::V1::SamplesController < ApplicationController
  def index
    @articles = Article.order("created_at DESC")
    render json: @articles
  end
end
