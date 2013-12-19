class PhotosController < ApplicationController

 #  def create
    
 #    photo = Photo.new(photo_params)

 #    binding.pry

 #    if @photo.save
 #      # return to signup page
 #      # redirect_to new_session_path
 #    else
 #      # redirect_to new_session_path
 #    end

 #  end

 #  def update

 #  end

 #  def destroy
  
 #  end

 # private

 #  # security ########
 #  def photo_params
 #    params.require(:photo).permit(:name, :type, :email, :password, :password_confirmation)
 #  end

 #  def set_photo
 #    @photo = photo.find(params[:id])
 #  end

 #  # def authorized!
 #  #   unless @photo.id == session[:photo_id]
 #  #     redirect_to photo_path(session[:photo_id])
 #  #   end
 #  # end


end
