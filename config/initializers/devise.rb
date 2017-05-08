Devise.setup do |config|
  require 'devise/orm/active_record'
  config.sign_out_via = :delete
  config.omniauth :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
    :image_aspect_ratio => "square",
    :image_size => 140
  }
end
