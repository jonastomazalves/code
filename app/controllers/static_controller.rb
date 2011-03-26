class StaticController < ApplicationController
  # GET /imagens
  def imagens
    @images = Image.all

    respond_to do |format|
      format.html # imagens.html.erb
      format.xml  { render :xml => @images }
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
