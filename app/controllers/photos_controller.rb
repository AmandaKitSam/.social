class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new photo_params
    cloudinary = Cloudinary::Uploader.upload( params["photo"]["image"] )
    @photo.image = cloudinary["url"]
    @photo.save
    redirect_to photos_path
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def photo_params
    params[:photo].permit(:comment, :title)
  end

end
