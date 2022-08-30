class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      # password_confirmation: params[:password_confirmation],
      dog_name: params[:dog_name],
      photo_url: params[:photo_url],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    users = User.all.order(:id)
    render json: users
  end

  def destroy
    user_id = params["id"]
    user = User.find_by(id: params["id"])
    user.destroy

    render json: { message: "DELETED" }
  end
end
