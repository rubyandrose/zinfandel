class GiphyGif
  include Her::Model

  use_api GiphyApi

  resource_path '/v1/gifs/random?tag=:id&api_key=dc6zaTOxFJmzC'

  def image_url
    data['image_url'] if data.present?
  end
end
