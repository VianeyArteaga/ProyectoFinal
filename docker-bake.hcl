group "default" {
  targets = ["validacion"]
}

target "validacion" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["mjtaehyung/validacion:latest"]
  
}
