# Provider
terraform {
    required_providers {
        yandex = {
          source = "yandex-cloud/yandex"
          version = "0.71.0"
        }
        hashicorp = {
          source = "hashicorp/local"
          version = "2.1.0"
        }
        hashicorp2 = {
          source = "hashicorp/null"
          version = "3.1.0"
        }
    }    
}

provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
}
