local name = "estafette"
local version = "0.1.3"
local description = "The command-line interface for Estafette - The resilient and cloud-native CI/CD platform"
local homepage = "https://github.com/estafette/estafette"
local repository = "https://github.com/estafette/estafette"
local darwinSha256 = "2a84989c7b4f5f9d261362d2f82c4d6067c2904267bb762a2c5b46a16f77154c"
local linuxSha256 = "2a4418ad7c1c5ea576a3fdbbdadec64978f67ff4187afb907c06f22e4cab1148"
local windowsSha256 = "c4d7184a652dedceb020e678131b7d044c88d46bcf2080e3a980423af2e4d5a9"

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
