name "dendrite"
default_version "0.5.2"


dependency "ruby"
dependency "rubygems"

build do
  gem "install dendrite -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
end
