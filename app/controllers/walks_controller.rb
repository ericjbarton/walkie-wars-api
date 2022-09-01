class WalksController < ApplicationController
  def create
    walks = Walk.new(
      start: params[:start],
      midpoints: params[:midpoints],
      endpoint: params[:endpoint],
      timeIn: params[:timeIn],
      timeOut: params[:timeOut],
      distance: params[:distance],
      bestFriendsId: params[:bestFriendsId],
    )
    walk.save
  end

  def index
    walks = Walk.all.order(:id)
    render json: walks
  end

  def show
    walk = Walk.find_by(id: params[:id])
    render json: walk
  end

  def updaterails
    walk = Walk.find_by(id: params[:id])
    walk.start = params[:start] || walk.title
    walk.end = params[:end] || walk.end
    walk.time_out = params[:time_out] || walk.time_out
    walk.time_in = params[:time_in] || walk.time_in
    if walk.save
      render json: walk
    else
      render json: { errors: walk.errors.full_messages }, status: :bad_request
    end
  end
end
