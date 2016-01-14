CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: AWS_ACCESS_KEY_ID,
    aws_secret_access_key: AWS_SECRET_ACCESS_KEY ,
    region: 'ap-northeast-1'
  }

  case Rails.env
    when 'development'
      config.fog_directory = 'protospacecontents'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/protospacecontents'
  end
end
