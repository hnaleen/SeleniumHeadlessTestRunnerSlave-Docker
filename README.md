# SeleniumHeadlessTestRunnerSlave-Docker

docker container run -e TZ=Asia/Colombo --network my-net -e eureka_server_port=http://eureka:8761 -e server_port=8890 -p 5900:5900 -p 8890:8890 --name aft1 -e test_module_group_id=se.cambio.qa -e test_module_artifact_id=cambio-taf-nova-ward-t
est -e test_module_version=1.0-SNAPSHOT -v ${pwd}:/home/aft/mvn_repo aftslave
