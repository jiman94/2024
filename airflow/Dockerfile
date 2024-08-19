FROM apache/airflow:2.10.0

#root@5af6dd0ce431:/opt# cat /etc/*rel*
#PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"

USER root

RUN apt update 
RUN apt install -y openjdk-17-jdk

# install pip Requirements
#COPY requirements.txt /tmp/requirements.txt
#RUN pip install -r /tmp/requirements.txt
