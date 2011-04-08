class StaticController < ApplicationController
 # GET /index
  def index
    @imagens = Image.find(:all, :order => 'rand()', :limit => 5)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @imagens }
    end
  end

  # GET /albuns
  def albuns
    @albuns = Album.all
    
    respond_to do |format|
      format.html # albuns.html.erb
      format.xml  { render :xml => @albuns }
    end
  end
  
  # GET /imagens
  def imagens
    @imagens = Image.find_all_by_album_id(params[:id])
    
    respond_to do |format|
      format.html #imagens.html.erb
      format.xml  { render :xml => @imagens }
    end
  end
  
  # GET /noticias
  def noticias
    @news = News.all

    respond_to do |format|
      format.html # noticias.html.erb
      format.xml  { render :xml => @news }
    end
  end
end
