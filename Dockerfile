FROM ubuntu:14.04

# Update
RUN apt-get -yqq update
RUN apt-get install -yqq python 
RUN apt-get -yqq install python-pip

# Install app dependencies
RUN pip install Flask
#RUN pip install -r requirements.txt

# Bundle app source
COPY hello.py /hello.py

EXPOSE  8000
CMD ["python", "/hello.py", "-p 8000"]
