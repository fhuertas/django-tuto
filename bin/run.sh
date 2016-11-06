#!/bin/bash -e

BASEDIR=`dirname $0`/..

. $BASEDIR/env/bin/activate
cd $BASEDIR/mysite

python manage.py runserver