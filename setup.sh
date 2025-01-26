#!/bin/bash

sed "s|DIRROOT|$1|g" .htaccess > ../.htaccess
for n in header.html footer.html
do
    sed -i "s|DIRROOT|$1|g" $n
done