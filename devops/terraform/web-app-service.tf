resource "kubernetes_deployment" "simple_web" {
  metadata {
    name = "simple-web"
    labels = {
      app = "simple-web"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "simple-web"
      }
    }

    template {
      metadata {
        labels = {
          app = "simple-web"
        }
      }

      spec {
        container {
          image = var.simple_web_app_image
          name  = "simple-web"

          resources {
            limits = {
              cpu    = "250m"
              memory = "256Mi"
            }
            requests = {
              cpu    = "100m"
              memory = "50Mi"
            }
          }

        #   liveness_probe {
        #     http_get {
        #       path = "/"
        #       port = 80

        #       http_header {
        #         name  = "X-Custom-Header"
        #         value = "Awesome"
        #       }
        #     }

        #     initial_delay_seconds = 3
        #     period_seconds        = 3
        #   }
        }
      }
    }
  }
}
