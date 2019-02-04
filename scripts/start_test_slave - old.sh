#!/bin/sh
export DISPLAY=:20
Xvfb :20 -screen 0 1366x768x16 &
mvn -Dtest_module_group_id=${test_module_group_id} -Dtest_module_artifact_id=${test_module_artifact_id} -Dtest_module_version=${test_module_version} -Dserver.port=${server_port} -Deureka.client.serviceUrl.defaultZone=${eureka_server_port}/eureka/ spring-boot:run

