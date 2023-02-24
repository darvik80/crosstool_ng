group "crosstool" {
  targets = ["crosstool-base", "crosstool-ng", "builder-ng", "lib-builder-ng"]
  args    = {
    UID    = 1000
    TARGET = armv7-rpi2
  }
}

target "crosstool-base" {
  dockerfile = "images/Dockerfile_Base"
  tags       = ["docker.io/darvik80/crosstool-base:latest"]
}

target "crosstool-ng" {
  dockerfile = "images/Dockerfile_CrossToolNG"
  tags       = ["docker.io/darvik80/crosstool-ng:latest"]
}

target "builder-ng" {
  dockerfile = "images/Dockerfile_Builder"
  tags       = ["docker.io/darvik80/builder-ng:latest"]
}

target "lib-builder-ng" {
  dockerfile = "images/Dockerfile_LibBuilder"
  tags       = ["docker.io/darvik80/lib-builder-ng:latest"]
}