#!/bin/bash

flutter pub get
sh ./run-scripts/build.sh $1 $2
fastlane $2 fire_dev env:$3 --env $3