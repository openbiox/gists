#!/usr/bin/env sh
if [ -d $GOPATH ]
then
  cd $GOPATH
  if [ ! -d src/golang.org/x ]
  then
    mkdir -p src/golang.org/x
  fi
  cd src/golang.org/x
  for i in tools tour crypto sys website gddo lint dl xerrors perf mod vgo protobuf oauth2 image dep net mock gofrontend playground appengine debug exp mobile review geo blog text proposal sync benchmarks talks term arch example time glog snappy groupcache freetype scratch cwg sublime-build winstrap leveldb sublime-config
  do
    if [ ! -d ${i} ] 
    then
        git clone https://github.com/golang/${i}
    fi
done
fi

