name "synapse"
default_version "0.13.1"


dependency "ruby"
dependency "rubygems"

build do
  gem "install synapse -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
end
