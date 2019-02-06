class Api::ColorsController < ApplicationController

  def index
    @colors = HTTP.get("https://api.harvardartmuseums.org/color?apikey=#{ENV["API_KEY"]}").parse["records"]

    render 'index.json.jbuilder'
    
  end
end
