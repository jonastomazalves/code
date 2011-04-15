class StaticController < ApplicationController
 # GET /index
  def index
    @imagens = Image.find(:all, :conditions => ["visivel <= ?", true], :order => 'rand()', :limit => 5)
    @noticias = News.find(:all, :order => 'updated_at DESC', :limit => 3)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => {@imagens, @noticias}  }
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
  
  # GET /imagem
  def imagem
    @imagem = Image.find(params[:id])
    
    respond_to do |format|
      format.html #imagem.html.erb
      format.xml  { render :xml => @imagem }
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
  
  # GET /noticia
  def noticia
    @news = News.find(params[:id])

    respond_to do |format|
      format.html # noticia.html.erb
      format.xml  { render :xml => @news }
    end
  end
  
  # GET /evento
  def eventos
    @albuns = Album.find_all_by_tipo("Evento")
    
    respond_to do |format|
      format.html #eventos.html.erb
      format.xml  { render :xml => @albuns }
    end
  end
  
  # carrega somente a página associada ao controller
  # GET /convite
  def convite
    render :layout => nil
  end
end
