
## Download

Install XCode. 

This build of sqlite3 was built by downloading:

sqlite-autoconf-VERSION.tar.gz	

From https://www.sqlite.org/download.html

## Build

Executing custom-build.sh in the autoconf directory.

By default the output is sqlite3 - to avoid clashes with the bundled version of SQLite rename the resulting library to libsqlite3session.dylib. The Mono runtime expects the library to follow macOS library naming conventions and will strip the lib from the front and the .dylib from the end when using the DllImport attribute.

The version.txt contains the (manually updated) version number for the built binary.

## Verification

To verify all of the proper symbols are present, use the macOS command line:

nm -a libsqlite3session.dylib
