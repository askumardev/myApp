class UsersController < ApplicationController
  def index
    @users = get_user_profile(params) if params[:name]
    
  end

  private
  def get_user_profile(params)
    response = RestClient.get(
      "#{API_URL}/users"
    )

    data = JSON.parse(response.body)
    res = data['users'].select { |values| values["name"] == params[:name] }
    if data['errors'].present?
      return nil
    else
      res
    end
  end
end
