local name = "estafette"
local version = "0.1.2"
local description = "The command-line interface for Estafette - The resilient and cloud-native CI/CD platform"
local homepage = "https://github.com/estafette/estafette"
local repository = "https://github.com/estafette/estafette"
local darwinSha256 = "339768c3f1eb2227a7924e341944c3cf1100352790f7580b03c0c5fefb707e89"
local linuxSha256 = "62c60c8c175b4c2d93f34e642be29c88ee1abd6cf491e68bb7507ac650db69f2"
local windowsSha256 = "cf315cac593e729288ff9bf7830d89345aa2b4dbdb341ac00a044b9bfa70e9c0"

food = {
    name = name,
    description = description,
    homepage = homepage,
    version = version,
    packages = {
        {
            os = "darwin",
            arch = "amd64",
            url = repository .. "/releases/download/v" .. version .. "/" .. name .. "-v" .. version .. "-darwin-amd64.zip",
            -- shasum of the release archive
            sha256 = darwinSha256,
            resources = {
                {
                    path = name .. "-v" .. version .. "-darwin-amd64",
                    installpath = "bin/" .. name,
                    executable = true
                }
            }
        },
        {
            os = "linux",
            arch = "amd64",
            url = repository .. "/releases/download/v" .. version .. "/" .. name .. "-v" .. version .. "-linux-amd64.zip",
            -- shasum of the release archive
            sha256 = linuxSha256,
            resources = {
                {
                    path = name .. "-v" .. version .. "-linux-amd64",
                    installpath = "bin/" .. name,
                    executable = true
                }
            }
        },
        {
            os = "windows",
            arch = "amd64",
            url = repository .. "/releases/download/v" .. version .. "/" .. name .. "-v" .. version .. "windows-amd64.zip",
            -- shasum of the release archive
            sha256 = windowsSha256,
            resources = {
                {
                    path = name .. "-v" .. version .. "-windows-amd64" .. ".exe",
                    installpath = "bin\\" .. name .. ".exe"
                }
            }
        }
    }
}
