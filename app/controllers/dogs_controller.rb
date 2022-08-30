class DogsController < ApplicationController
  def create
    dog = Dog.new(
      dog_name: params[:dog_name],
      photo_url: params[:photo_url],
    )
    dog.save
  end

  def index
    dogs = Dog.all.order(:id)
    render json: dogs
  end
end
