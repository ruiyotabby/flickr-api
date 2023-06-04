class StaticPagesController < ApplicationController
  def home
    @response = HTTP.get("https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{ENV['FLICKR_KEY']}&format=json&nojsoncallback=?&user_id=#{params[:user_id]}&per_page=#{params[:per_page]}")
    @response = JSON.parse(@response)
  end
end
