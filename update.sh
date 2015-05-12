#!/bin/sh
# @Author: forecho
# @Date:   2015-05-11 21:22:05
# @Last Modified by:   forecho
# @Last Modified time: 2015-05-11 21:27:37
unzip yii2-advanced-demo.zip
cd _yii2
composer update
cd ..
zip -r yii2-advanced-demo.zip _yii2
git add --all
git commit -m "更新$(date +%Y-%m-%d_%H%M%S)"
git push -f
rm -rf _yii2