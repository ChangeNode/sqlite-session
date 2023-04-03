cd win64\target\sqlite-amalgamation\sqlite-amalgamation-3410200\
cl -O2 -D SQLITE_API=__declspec(dllexport) -DSQLITE_ENABLE_SESSION -DSQLITE_ENABLE_PREUPDATE_HOOK -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_RTREE=1 -DSQLITE_DQS=0 -DSQLITE_ENABLE_COLUMN_METADATA sqlite3.c -link -dll -out:sqlite3session.dll
