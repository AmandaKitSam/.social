class PhotosController < ApplicationController
  def index
    @photos = Photo.all

    # raise
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
    @photo = Photo.find params[:id]
  end

  def update
    photo = Photo.find params[:id]
    cloudinary = Cloudinary::Uploader.upload( params["photo"]["image"] )
    photo.update photo_params
    photo.image = cloudinary["url"]
    photo.save
    redirect_to photos_path
  end

  def show
  end

  def destroy
    @photo = Photo.find params[:id]
    @photo.destroy
    redirect_to photos_path
  end

  def photo_params
    params[:photo].permit(:comment, :title)
  end

end
