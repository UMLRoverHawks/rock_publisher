FILE(REMOVE_RECURSE
  "../src/rock_publisher/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/imgDataArray.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_imgDataArray.lisp"
  "../msg_gen/lisp/imgData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_imgData.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
