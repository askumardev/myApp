class UsersController < ApplicationController
  def index
    @users = get_user_profile(params) if params[:name]
  end

  private
  def get_user_profile(params)
    response = RestClient.get("#{API_URL}/users")

    data = JSON.parse(response.body)
    #binding.pry
    res = data['data'].select { |values| values["first_name"] == params[:name] }
    if data['errors'].present?
      return nil
    elsif res.blank?
      []#render false#render json: {"msg": "Name not found."}
    else
      res
    end
  end
end
