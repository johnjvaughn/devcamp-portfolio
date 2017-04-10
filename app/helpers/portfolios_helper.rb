module PortfoliosHelper
  def image_generator(width:, height:)
    "http://placehold.it/#{width}x#{height}"
  end
  
  def portfolio_img img, type
    if type == 'thumb'
      return img.model.thumb_image? ? img : image_generator(width:350, height: 200,)
    elsif (type == 'main')
      return img.model.main_image? ? img : image_generator(width:600, height: 400)
    else
      return nil
    end
  end
  
end

