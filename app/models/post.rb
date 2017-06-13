class Post < ApplicationRecord
  belongs_to :user
  has_many :reactions

  validates :content, presence: true, length: { minimum: 10 } 
  def giphy_iframe_url
    "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=#{giphy}&fmt=html"
  end

  def giphy_gif
    @giphy_gif ||= GiphyGif.find(giphy)
  end
end
