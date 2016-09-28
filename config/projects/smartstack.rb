name "smartstack"
maintainer "Yagnik"
homepage "https://github.com/yagnik/omnibus-smartstack"

install_dir "#{default_root}/#{name}"

override :fetcher_retries, 10

build_version "0.1.0"

build_iteration 1
override :ruby,         version: "2.2.4"
override :bundler,      version: "1.11.2"
override :rubygems,     version: "2.5.2"
override :synapse,      version: "0.13.8"
override :nerve,        version: "0.8.0"
override :dendrite,     version: "0.5.5"

dependency "preparation"
if rhel? && platform_version.satisfies?("> 7.0")
  dependency "liblzma"
end
dependency "synapse"
dependency "nerve"
dependency "dendrite"
dependency "haproxy"
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
