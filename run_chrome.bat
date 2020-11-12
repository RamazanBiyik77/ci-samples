-- Tested against Docker Toolbox.
-- Make sure the corresponding Windows drives/directories has been added to VirtualBox's shared directories https://docs.docker.com/toolbox/toolbox_install_windows/#optional-add-shared-directories

@echo on

set currentdir=%cd::\=/%
set currentdir=%currentdir:\=/%

docker run -t --rm -v "${PWD}:/tmp/source" -w /tmp/source katalonstudio/katalon katalon-execute.sh -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest" -apiKey="05d33cde-849c-4b66-8aeb-07d1e258f30c"

docker run -t --rm -v "${PWD}:/tmp/source" -w /tmp/source katalonstudio/katalon katalon-execute.sh -browserType="Firefox" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest" -apiKey="05d33cde-849c-4b66-8aeb-07d1e258f30c"

docker run -t --rm -v "${PWD}:/tmp/source" -w /tmp/source katalonstudio/katalon katalon-execute.sh -noSplash -runMode=console -retry=0 -testSuiteCollectionPath="Test Suites/TS_RegressionTestCollection" -apiKey="05d33cde-849c-4b66-8aeb-07d1e258f30c"