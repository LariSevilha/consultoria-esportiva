class HomeController < ApplicationController
  def index
    @header = Header.all
    @video = Video.all
    @footer = Footer.all 
  end
end
