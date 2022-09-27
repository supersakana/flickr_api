class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    @photos = flickr.people.getPhotos(user_id: params[:user_id]) unless params[:user_id].blank?
  end
end
