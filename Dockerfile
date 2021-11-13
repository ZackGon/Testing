FROM python
RUN pip install flask
RUN pip install ipapi
COPY  ./templates /home/myapp/templates/
COPY  ./static /home/myapp/static/
COPY  geoloc.py /home/myapp/
EXPOSE 8080
CMD python3 /home/myapp/geoloc.py
