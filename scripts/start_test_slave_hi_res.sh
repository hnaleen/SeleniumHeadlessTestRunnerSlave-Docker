#!/bin/sh
Xvfb :99 &
x11vnc & -display :99
mvn -Dtest_module_group_id=${test_module_group_id} -Dtest_module_artifact_id=${test_module_artifact_id} -Dtest_module_version=${test_module_version} -Dserver.port=${server_port} -Deureka.client.serviceUrl.defaultZone=${eureka_server_port}/eureka/ spring-boot:run

