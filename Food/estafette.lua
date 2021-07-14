local name = "estafette"
local version = "0.1.4"
local description = "The command-line interface for Estafette - The resilient and cloud-native CI/CD platform"
local homepage = "https://github.com/estafette/estafette"
local repository = "https://github.com/estafette/estafette"
local darwinSha256 = "0e2f23851dd434123b171268a6670e97309d56472614049a92a8a54766ba9ae5"
local linuxSha256 = "1b74243b2dce32ec817e32d8a640b3c0b1a08d8439ff554582a091f1fc2be56d"
local windowsSha256 = "66ac0f013179afa2ecefb10efb9475275f0094791be2f65b58f3d977df4fc271"

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
