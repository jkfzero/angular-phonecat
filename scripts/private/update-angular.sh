#! /bin/sh
if [ -n "$1" ]; then
  ROOT_DIR=`dirname $0`/../..
  cd $ROOT_DIR

  mkdir tmp
  curl https://raw.github.com/angular/code.angularjs.org/master/$1/angular-$1.zip -o tmp/angular.zip
  rm -fr app/lib/angular
  unzip tmp/angular.zip -d app/lib
  mv app/lib/angular-$1 app/lib/angular
  rm -fr app/lib/angular/docs
  rm -fr tmp
else
  echo "Usage: update-angular <version>"
fi  
