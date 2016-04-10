name "smartstack"
maintainer "Yagnik"
homepage "https://github.com/airbnb/synapse"

install_dir "#{default_root}/#{name}"

build_version do
  source :git
  output_format :git_describe
end
build_iteration 1
override :ruby,         version: "2.2.4"
override :bundler,      version: "1.11.2"
override :rubygems,     version: "2.5.2"
override :synapse,      version: "0.13.1"
override :nerve,        version: "0.7.0"

dependency "preparation"
dependency "synapse"
dependency "nerve"
dependency "haproxy"
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
