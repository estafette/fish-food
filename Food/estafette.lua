local name = "estafette"
local version = "0.1.1"
local description = "The command-line interface for Estafette - The resilient and cloud-native CI/CD platform"
local homepage = "https://github.com/estafette/estafette"
local repository = "https://github.com/estafette/estafette"
local darwinSha256 = "7b2e71c830b586d32e421b50e3d58e6b9f79226b6291441b460c1bc9f1fdbe3a"
local linuxSha256 = "7c1601683f7be61be27ad07bd57e2acbccbf8c5355fb5223b438b3c1ee92b80b"
local windowsSha256 = "81eb26936bb2d69fc281d0304d9326a2f636b0789fd70b4e24c52aeab3bd7ec1"

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
