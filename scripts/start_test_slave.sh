#!/bin/sh

mvn -Dtest_module_group_id=${test_module_group_id} -Dtest_module_artifact_id=${test_module_artifact_id} -Dtest_module_version=${test_module_version} spring-boot:run

