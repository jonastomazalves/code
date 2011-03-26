class StaticController < ApplicationController
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


  # GET /links
  def links
    respond_to do |format|
      format.html # links.html.erb
    end
  end
  
  # GET /faq
  def faq
    respond_to do |format|
      format.html # faq.html.erb
    end
  end
end
