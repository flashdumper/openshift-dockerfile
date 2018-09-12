FROM centos

COPY requirements.txt /tmp/
COPY app.py /opt/

RUN yum install -y epel-release &&\
    yum install -y python2-pip python34-pip python34 &&\
    pip install --upgrade pip &&\
    pip3 install -r /tmp/requirements.txt

CMD ["/usr/bin/python3 /opt/app.py"]
