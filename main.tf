resource "helm_release" "your-project-name" {
  name       = "name-of-service-you-are-going-to-install"
  repository = "helm-URL-which-you-want-pull-your-helm-chats"
  chart      = "name-of-your-chart"
  namespace = "where-your-pods-need-to-be-scheduled"

  set {
    name  = "apiService.create"
    value = "true"
  }

}
