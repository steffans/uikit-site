group "default" {
    targets = ["site", "site-amd"]
}

target "site" {
    inherits = ["docker-metadata-action"]
    dockerfile = "./Dockerfile"
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "site-amd" {
    inherits = ["docker-metadata-action"]
    dockerfile = "./Dockerfile"
    platforms = [
        "linux/amd64"
    ]
}

target "docker-metadata-action" {}
