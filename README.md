# sqlite-session
 
Build of [sqlite](https://sqlite.org/) with the [Session Extension](https://sqlite.org/sessionintro.html) turned on.

GitHub Actions are used to generate the build. If you want to run the build locally, you can follow the steps of the GitHub Actions and/or just read the README for each build.

Only macOS and Windows x64 builds are included.

On macOS, downloading a dylib will set a flag marking as damaged/dangerous. This can be cleared with:

xattr -cr libsqlite3session.dylib

You can also use the xattr w/o the options to view any set attributes.
