class ImagesController < ApplicationController
before_action :logged_in_user, only: [:create]

  def create
    @image = current_user.microposts.build(micropost_params)
    if @image.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  private
  def micropost_params
    params.require(:picture).permit(:caption)
  end
end
