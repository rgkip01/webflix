Aws.config.update({
  region: 's3.us-east-2',
  credentials: Aws::Credentials.new(Rails.application.credentials.aws_key, Rails.application.credentials.aws_secret)
})

AWS_BUCKET = Aws::S3::Resource.new.bucket('webflix01')
