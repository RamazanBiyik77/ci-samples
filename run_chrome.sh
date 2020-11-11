#!/usr/bin/env bash

set -xe

docker run -t --rm -v "$(pwd)":/katalon/katalon/source katalonstudio/katalon katalon-execute.sh -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest" -apiKey="05d33cde-849c-4b66-8aeb-07d1e258f30c"