class UrlsController < ApplicationController

#get all the urls
  def index
  	@urls = Url.all
  end

#get this would normally have a form view to make a new url
  def new
  	@url = Url.new
  end

#post would accept form data from the new view
  def create
  	url = Url.create(params[:url])
  	
  	redirect_to urls_path
  end

  def show
  	@url = Url.find(params[:id])
  end

  def edit
  	@url = Url.find(params[:id])
  end

#put
  def update
  end

  def destroy
  end


end
