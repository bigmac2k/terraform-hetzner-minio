resource "hcloud_server" "minio" {
  name = "minio"
  location = var.location
  image = "ubuntu-20.04"
  server_type = var.machine_type
  backups = true
  ssh_keys = [hcloud_ssh_key.minio.name]
  user_data = templatefile("${path.module}/server_userdata.tmpl", {
    extra_ssh_keys = var.extra_ssh_keys,
    minio-user = var.minio_user,
    minio-pass = var.minio_pass,
    minio-opts = var.minio_opts,
    minio-version = var.minio_version,
    minio-sha = var.minio_sha,
    minio-client-version = var.minio_client_version,
    minio-client-sha = var.minio_client_sha
  })
}
