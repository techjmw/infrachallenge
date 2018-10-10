#!/bin/bash
#Setup Flask on Ubuntu
cwd=$(pwd)
osd="/opt/onan-asil"
echo '******************************************************************'
echo 'Infrastructure challenge flask component'
echo '******************************************************************'
apt update
apt install -y python3-venv virtualenv python3-pip
mkdir $osd; mkdir $osd/flask
echo '******************************************************************'
echo 'Creating flask virtual environment and activating'
echo '******************************************************************'
cd $osd/flask/;pip3 install virtualenv;virtualenv venv;cd $osd/flask/venv/
source $osd/flask/venv/bin/activate
export FLASK_APP=flaskapp.py
cp $cwd/flaskapp.py $osd/flask/venv/
echo '******************************************************************'
echo 'Running Flask'
echo '******************************************************************'
flask run
echo 'END'
