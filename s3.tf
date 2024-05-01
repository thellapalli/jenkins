resource "aws_s3_bucket" "mk" {
  bucket = "tmkbuck"

  tags = {
    Name = "bucket"
  }
}
/* resource "aws_dynamodb_table" "db" {
  name     = "statefiledb"
  hash_key = "LockID" 
billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20  
attribute {
    name = "LockID"
    type = "S"
  }
}*/

/*resource "aws_iam_user" "user" {
name = "tm"
tags = {
Name = "mk"
}
}*/
