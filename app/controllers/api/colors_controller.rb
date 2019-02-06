class Api::ColorsController < ApplicationController

  def index
    @colors = HTTP.get("https://api.harvardartmuseums.org/color?apikey=82682f90-2996-11e9-b19a-9b286143c818").parse["records"]

    render 'index.json.jbuilder'
    
  end
end
