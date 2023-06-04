module StaticPagesHelper
  def display_photo(photo_id = '')
    response = HTTP.get("https://www.flickr.com/services/rest/?method=flickr.photos.getInfo&api_key=#{ENV['FLICKR_KEY']}&photo_id=#{photo_id}&format=json&nojsoncallback=?")
    photo = JSON.parse(response)['photo']
    tag.img src: "https://live.staticflickr.com/#{photo['server']}/#{photo['id']}_#{photo['secret']}_c.jpg"
  end
end
