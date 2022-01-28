file(REMOVE_RECURSE
  "CMakeFiles/romfs_gen_files_target"
  "romfs_extract.stamp"
  "../etc/init.d/rc.serial"
  "../etc/init.d/rc.autostart"
  "../etc/init.d/rc.autostart.post"
  "romfs_copy.stamp"
  "romfs_extras.stamp"
  "../romfs_files.tar"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/romfs_gen_files_target.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
