output "etag" {
  description = "The ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption."
  value       = aws_s3_bucket_object.object.etag
}

output "id" {
  description = "The key of the object."
  value       = aws_s3_bucket_object.object.id
}

output "version_id" {
  description = "A unique version ID value for the object, if bucket versioning is enabled."
  value       = aws_s3_bucket_object.object.version_id
}

