variable "bucket" {
  description = "The name of the bucket to put the file in. This shoudl be the orgin bucket for the distribution."
  type        = "string"
}

variable "distribution_id" {
  description = "The identifier for the distribution. For example: EDFDVBD632BHDS5."
  type        = "string"
}

variable "content" {
  description = "Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text."
  type        = "string"
}

variable "content_type" {
  description = "A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input."
  type        = "string"
}

variable "key" {
  description = "The name of the object once it is in the bucket."
  type        = "string"
}

variable "kms_key_id" {
  default     = ""
  description = "Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified ARN of the KMS Key."
  type        = "string"
}

variable "server_side_encryption" {
  default     = "AES256"
  description = "Specifies server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  type        = "string"
}

variable "tags" {
  default     = {}
  description = "A mapping of tags to assign to the object."
  type        = "map"
}

