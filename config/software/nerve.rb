name "nerve"
version "0.7.0"


dependency "ruby"
dependency "rubygems"

build do
  gem "install nerve -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
end
