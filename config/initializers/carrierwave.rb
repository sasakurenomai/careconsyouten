require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {

      provider: 'AWS',
      region: 'ap-northeast-1',
      aws_access_key_id: ENV['S3_ACCESS_KEY'] #Rails.application.secrets.aws_access_key_id,
      aws_secret_access_key: ENV['S3_SECRET_KEY'] #Rails.application.secrets.aws_secrets_access_key
    }
    config.fog_directory = 'sasakure02'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/sasakure02'
  end
end