FROM selenium/standalone-chrome-debug:3.141.59-bismuth

USER root

#RUN mkdir /home/aft

RUN apt update && sudo apt-get install -y \
 maven \
 openjdk-8-jdk \
 iputils-ping \
 vim

RUN apt-get clean

ENV test_module_group_id=NO_TEST_MODULE_GROUP_ID_PROVIDED

ENV test_module_artifact_id=NO_TEST_MODULE_ARTIFACT_ID_PROVIDED

ENV test_module_version=NO_TEST_MODULE_VERSION_PROVIDED

ENV server_port=NO_SERVER_PORT_PROVIDED

ENV eureka_server_port=EUREKA_SERVER_URL_PORT_NOT_PROVIDED

COPY mvn/settings.xml /usr/share/maven/conf/settings.xml

COPY SlaveTestService /home/aft/SlaveTestService

RUN chmod +x /home/aft/SlaveTestService/target/classes/drivers/linux/chromedriver

COPY scripts/start_test_slave.sh /home/aft/SlaveTestService/start_test_slave.sh

WORKDIR /home/aft/SlaveTestService

RUN mkdir /home/aft/mvn_repo

CMD ["/home/aft/SlaveTestService/start_test_slave.sh"]