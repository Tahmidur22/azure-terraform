terraform {
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
        version = "3.0.2"
    }
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
}

resource "docker_image" "nginx_image" {
    name = "nginx"
    keep_locally = false 
}

resource "docker_container" "nginx_container" {
    image = docker_image.nginx_image.name
    name = "nginx_container"
    ports {
        internal = 80 
        external = 80
    }
}

provider "azurerm" {
    features {}
}