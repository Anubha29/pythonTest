FROM ubuntu:12.04

# Update
RUN apk add --update python py-pip

# Install app dependencies
# RUN pip install Flask
RUN pip install -r requirements.txt

# Bundle app source
COPY hello.py /src/hello.py

EXPOSE  8000
CMD ["python", "/src/hello.py", "-p 8000"]
