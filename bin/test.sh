#!/bin/bash

# Execute this from the project root directory

export TCMS_PRODUCT_VERSION=$TRAVIS_BRANCH
export TCMS_BUILD=`echo $TRAVIS_COMMIT | cut -c1-7`

nosetests --with-tap --tap-stream 2> output.tap
tcms-tap-plugin output.tap

nosetests --with-xunit
tcms-junit.xml-plugin nosetests.xml
