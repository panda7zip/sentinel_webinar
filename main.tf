# S3 buckets
resource "aws_s3_bucket" "webinar" {
  bucket = "sentinel_webinar_bucket_without_tags"
  tags = {
    "Environment" = "dev"
  }
}

resource "aws_s3_bucket" "webinar_with_tags" {
  bucket = "sentinel_webinar_bucket_with_tags"
  tags = {
    "Environment" = "dev"
  }
}


# EC2 Instances
resource "aws_instance" "this_medium" {
  ami = data.aws_ami.this.id
  instance_type = "t3.medium"
  tags = {
    Name = "webinar-t3-medium"
  }
}

resource "aws_instance" "this_medium_2" {
  ami = data.aws_ami.this.id
  instance_type = "t3.medium"
  tags = {
    Name = "webinar-t3-medium2"
  }
}