variable "machine_type" {
  type        = string
  default     = "cx21-ceph"
  description = "machine type to use for the minio machine"
}
variable "extra_ssh_keys" {
  type        = list
  default     = []
  description = "Extra ssh keys to inject into minio instance"
}
variable "location" {
  type        = string
  default     = "nbg1"
  description = "hetzner location"
}
variable "minio_opts" {
  type        = string
  default     = "--address :9000 --console-address 127.0.0.1:9001"
  description = "minio opts"
}
variable "minio_user" {
  type        = string
  default     = "minio"
  description = "minio opts"
}
variable "minio_pass" {
  type        = string
  description = "minio password"
}
variable "minio_version" {
  type        = string
  default     = "20210730000200.0.0"
  description = "minio version"
}
variable "minio_sha" {
  type        = string
  default     = "10178e8db321c55b00740250409bb89a28e99e709139e2e91c2794e82dd2f955"
  description = "minio sha"
}
variable "minio_client_version" {
  type        = string
  default     = "20210727064619.0.0"
  description = "minio client version"
}
variable "minio_client_sha" {
  type        = string
  default     = "94338791856b1cc6ec32a0d390806f6bcb08500a623a048309ba1302c92fd575"
  description = "minio client sha"
}
