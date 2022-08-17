FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN mkdir /rocks/
WORKDIR /rocks/
COPY . /rocks/
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt
CMD bash asad.sh
