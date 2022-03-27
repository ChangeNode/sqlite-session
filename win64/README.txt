# SQLite 3 for Windows

How to generate SQLite3 with the Sessions Extension for Windows.

## Download

- The sqlite3 amalgamation, in this case, sqlite-amalgamation-3380100

- Install the Community Version of Visual Sudio 2022. (https://visualstudio.microsoft.com/vs/community/)

- Install the C/C++ tooling in Visual Studio 2022. I think all that is needed is the desktop C/C++ tools.

## Build

Run the x64 Native Tools Command Prompt for VS 2022 to get the build environment with the native tools set up.

Optional - you may need to run the build1.bat file attached, which generates source. This script calls nmake, which appears to run several preliminary steps. build1.bat runs from inside a download of the the sqlite-autoconf-VERSION instead. It's hard for me to verify everything without doing a clean wipe of Windows each time. So, unfortunately, worst case you might need to download and run build1.bat inside of the autoconf version of sqlite, and then run build2.bat inside of the amalgamation.

Place the build2.bat file in the sqlite-amalgamation-VERSION directory, and then run it. This generates the actual dll.

Note that the build2.bat generates a sqlite3session.dll to avoid conflicting with other sqlite libraries that might exist on the PATH.

## Verify

The DLL Export Viewer utility can be used to verify that the dll has been built correctly and that it contains the proper function exports (in particular, the session related extensions).

http://www.nirsoft.net/utils/dll_export_viewer.html

The version.txt contains the version number for the built binary.
