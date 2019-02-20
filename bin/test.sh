#!/bin/bash

# Execute this from the project root directory

# we want Version == "master" so that all results get reported under
# the same TestPlan
export TCMS_PRODUCT_VERSION="master"

nosetests --with-tap --tap-stream 2> output.tap
tcms-tap-plugin output.tap

nosetests --with-xunit
tcms-junit.xml-plugin nosetests.xml
