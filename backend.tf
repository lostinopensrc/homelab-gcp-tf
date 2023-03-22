terraform {
  backend "gcs"{
    bucket      = "my-homelab-tf-state"
    prefix      = "homelab/"
  }
}