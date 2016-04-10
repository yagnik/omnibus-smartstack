name 'haproxy'
default_version '1.6.4'

dependency "pcre"
dependency "openssl"
dependency "zlib"

source url: 'http://www.haproxy.org/download/1.6/src/haproxy-1.6.4.tar.gz',
  md5: 'ee107312ef58432859ee12bf048025ab'

relative_path "haproxy-#{version}"

build do

  env = with_standard_compiler_flags(with_embedded_path)

  make " TARGET=linux26" \
    " USE_OPENSSL=1" \
    " SSL_INC='#{install_dir}/embedded/include'" \
    " SSL_LIB='#{install_dir}/embedded/lib'" \
    " PCRE_INC='#{install_dir}/embedded/include'" \
    " PCRE_LIB='#{install_dir}/embedded/lib'" \
    " USE_ZLIB=1" \
    " USE_LINUX_SPLICE=1" \
    " USE_PCRE=1", env: env

  mkdir "#{install_dir}/bin"
  move "haproxy", "#{install_dir}/bin/haproxy"

end
