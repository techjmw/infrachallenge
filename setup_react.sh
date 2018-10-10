#!/bin/bash
#Setup React on Ubuntu
cwd=$(pwd)
osd="/opt/onan-asil"
echo '******************************************************************'
echo 'Infrastructure challenge react component'
echo '******************************************************************'
apt update
apt install -y nodejs npm
mkdir $osd; mkdir $osd/react; cd $osd/react
npm init -y; npm install -g create-react-app
echo '******************************************************************'
echo 'Creating react app'
echo '******************************************************************'
create-react-app reactapp
echo '******************************************************************'
echo 'Copying artifacts and config files'
echo '******************************************************************'
cp $cwd/App.css $osd/react/reactapp/src
cp $cwd/App.js $osd/react/reactapp/src
cp $cwd/onan_ilas_ray.jpg $osd/react/reactapp/src
echo '******************************************************************'
echo 'Running React'
echo '******************************************************************'
cd $osd/react/reactapp
npm start
echo 'END'
