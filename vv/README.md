# vv

vv (verifyversions) recursively scans the current directory for object files, static libraries, shared libraries and executables and reports every undefined symbol tagged with a GLIBC version, along with the file it was found in. Useful for finding the true minimum GLIBC version required by a file.
