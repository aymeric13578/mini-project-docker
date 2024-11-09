FROM python:3.8-buster 

LABEL MAINTAINER="aymericlibam65@gmail.com"

RUN apt update -y && apt install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y

COPY student_age.py /student_age.py

COPY requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

VOLUME ["/data"]

EXPOSE 5000

CMD ["python3","/student_age.py"]
