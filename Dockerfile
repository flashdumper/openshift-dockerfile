FROM centos

COPY requirements.txt /tmp/
COPY app.py /opt/

RUN yum install -y epel-release &&\
    yum install -y python2-pip python34-pip python34 &&\
    pip install --upgrade pip &&\
    pip3 install -r /tmp/requirements.txt &&\
    chown -R 1001:0 /opt/ &&\
    chmod -R g=u /opt/

USER 1001

WORKDIR /opt/
CMD ["python3","app.py"]
