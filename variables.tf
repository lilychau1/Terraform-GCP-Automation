variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my-creds.json"
}

variable "region" {
  description = "Region"
  default     = "europe-west2-a"
}

variable "location" {
  description = "Project Location"
  default     = "EU"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "terraform_test"
}

variable "gcs_bucket_class" {
  description = "My Storage Bucket Name"
  default     = "terraform-test"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}

variable "vm_instance" {
  description = "Name of VM Instance"
  default     = "test-vm-instance-1"
}

variable "machine_type" {
  description = "VM machine type"
  default     = "e2-standard-4"
}