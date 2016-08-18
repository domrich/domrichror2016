CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["S3-KEY"],
    aws_secret_access_key: ENV["S3-SECRET"]

  }
  config.fog_directory = ENV ["S3-BUCKET"]
end
