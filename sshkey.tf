resource "hcloud_ssh_key" "minio" {
  name = "minio"
  public_key = file("~/.ssh/id_rsa.pub")
}
