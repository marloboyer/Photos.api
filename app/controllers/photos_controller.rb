class PhotosController < ApplicationController
  def index
    @photo = Photo.all
    render :index
  end

  def create
    @photo = Photo.create(
      name: params[:name],
      width: params[:width],
      hegith: params[:height],
    )
    render :show
  end
end
