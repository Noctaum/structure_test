#!/bin/bash

DART_DEFINE_PARAMS="flutter build $1 --release --flavor $2 --dart-define-from-file=config.$2.json"
eval $DART_DEFINE_PARAMS