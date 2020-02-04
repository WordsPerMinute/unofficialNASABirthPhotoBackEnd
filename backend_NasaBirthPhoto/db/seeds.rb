require 'rest-client'
require 'pry'

Photo.destroy_all

# Photo.create

def get_photos_first
  response = RestClient.get("https://api.nasa.gov/planetary/apod?api_key=XdBHQfd0bJ9P7r0GL7a1cIhk1GvHiKolpXiwIAQd&start_date=2019-01-01&end_date=2019-06-30")
  result = JSON.parse(response)
  result.map do |photo|
    Photo.create(title: photo["title"], url: photo["url"], date: photo["date"], description: photo["explanation"], media_type: photo["media_type"], credit: photo["copyright"])
  end
end

def get_photos_second
  response = RestClient.get("https://api.nasa.gov/planetary/apod?api_key=XdBHQfd0bJ9P7r0GL7a1cIhk1GvHiKolpXiwIAQd&start_date=2019-07-01&end_date=2019-12-31")
  result = JSON.parse(response)
  result.map do |photo|
    Photo.create(title: photo["title"], url: photo["url"], date: photo["date"], description: photo["explanation"], media_type: photo["media_type"], credit: photo["copyright"])
  end
end



get_photos_first
get_photos_second
