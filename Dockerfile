FROM jjanzic/docker-python3-opencv

ADD api.py /


ADD detector /detector
ADD lib /lib
ADD static /static
ADD haarcascade_frontalface_alt.xml /

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python", "./api.py" ]
