file(REMOVE_RECURSE
  "CMakeFiles/shellcheck"
  "../etc/init.d/rc.serial"
  "../etc/init.d/rc.autostart"
  "../etc/init.d/rc.autostart.post"
  "romfs_copy.stamp"
  "romfs_extract.stamp"
  "../romfs_files.tar"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/shellcheck.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
