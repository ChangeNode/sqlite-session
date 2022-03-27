rm -dr target
mkdir target
cd target
tar -xvf ../../sqlite-autoconf.tar.gz 
cd $(ls)
CC=clang CFLAGS="-arch x86_64 -arch arm64 -Os -DSQLITE_DQS=0 -DSQLITE_ENABLE_COLUMN_METADATA" ./configure --enable-session
make
cp sqlite3 ../libsqlite3session.dylib
cd ..
nm -a libsqlite3session.dylib > verify.txt
