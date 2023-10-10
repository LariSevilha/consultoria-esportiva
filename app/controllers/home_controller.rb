class HomeController < ApplicationController
  def index
    @header = Header.all
    @video = Video.all 
  end
end
