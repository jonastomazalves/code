module ImagesHelper
  def visivel_no_site(visivel)
    if visivel
      return "Sim"
    else
      return "Não"
    end
  end
end
