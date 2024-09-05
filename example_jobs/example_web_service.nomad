job "example-web" {
  datacenters = ["dc1"]
  
  group "web" {
    task "nginx" {
      driver = "docker"
      
      config {
        image = "nginx:latest"
        port_map {
          http = 80
        }
      }
      
      resources {
        cpu    = 500
        memory = 256
      }
      
      service {
        name = "nginx-web"
        port = "http"
        
        check {
          name     = "alive"
          type     = "http"
          path     = "/"
          interval = "10s"
          timeout  = "2s"
        }
      }
    }
    
    network {
      port "http" {
        static = 8080
      }
    }
  }
}

