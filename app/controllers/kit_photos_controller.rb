class KitPhotosController < ApplicationController
  def upload_photos
  end

  def upload
    @photo = KitPhoto.new(image: params[:file])
    # parsed = KitPhoto.parse_filename(params[:name])
    # @photo.title = parsed[:title]
    if @photo.save
      head 200
    end
  end
end

   