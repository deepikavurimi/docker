FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt -y install nano lsof python3 python3-pip
RUN mkdir application
ADD . /application
RUN cd /application && pip install -r requiremnets.txt
RUN chmod +rx /application/startup_dev.sh
CMD /application/startup.sh ; sleep infinity
