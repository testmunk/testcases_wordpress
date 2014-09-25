#!/bin/sh

# ./zip_feature features test.feature

FEATURES_PATH=$1
FEATURE_NAME=$2


zip -r 'features' $FEATURES_PATH > /dev/null

find $FEATURES_PATH -name '*.feature' | while read feature; do
    if [ ! $feature = "features/${FEATURE_NAME}" ];
    then
        zip -d 'features.zip' $feature
    fi
done
