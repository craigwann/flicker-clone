class ImagesController < ApplicationController

  def index
    @images = Image.all
    # @users = User.all
  end

  def show
    @image = Image.find(params[:id])
    @user = Image.user.user_id
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Image successfully added!"
      redirect_to images_path
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      redirect_to images_path
    else
      render :edit
    end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to "/"
  end

  end
private
  def image_params
    params.require(:image).permit(:files, :comments, :tags, :favorites, :title, :img)
  end

end
