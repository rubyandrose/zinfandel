class User < ApplicationRecord
  STAR_SIGNS=["aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn", "aquarius", "pisces"].freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :trackable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :posts
  has_many :likes

  validates :picture_url, format: { with: /.*\.(jpg|png)/i, message: 'must end in an image format' }
  validates :star_sign, inclusion: { in: STAR_SIGNS }, allow_blank: true 

  def self.from_omniauth(auth)
    find_or_create_by(email: auth.info.email).tap do |user|
      user.full_name = auth.info.name
      user.picture_url = auth.info.image
      user.save
    end
  end

  def daily_horoscope
    url = "http://sandipbgt.com/theastrologer/api/horoscope/#{self.star_sign}/today/"
    response = HTTParty.get(url)
    JSON.parse(response.body).fetch("horoscope")
  end
end
