ExternalProject_Add(pcre
  DOWNLOAD_DIR ${download_dir}
  URL ${pcre_url}
  URL_MD5 ${pcre_md5}
  BINARY_DIR "${CMAKE_CURRENT_BINARY_DIR}/pcre"
  INSTALL_DIR "${CMAKE_CURRENT_BINARY_DIR}/prefix"
  CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
)

ExternalProject_Get_Property(pcre install_dir)
set(PCRE_INCLUDE_DIR "${install_dir}/include")

message("PCRE_INCLUDE_DIR='${PCRE_INCLUDE_DIR}'")
