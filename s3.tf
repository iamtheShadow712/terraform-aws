resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-${random_id.random_id.hex}"
  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
  }
}

# Adding an object in the bucket
resource "aws_s3_object" "my_bucket_object" {
  bucket = aws_s3_bucket.my_bucket.id
  source = "./index.html"
  key    = "demo.html"
}


resource "random_id" "random_id" {
  byte_length = 8
}
