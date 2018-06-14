FROM ubuntu

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get -y install python-pip

RUN pip install pytesseract
RUN pip install numpy
RUN pip install pillow

RUN apt-get install -y tesseract-ocr
RUN apt-get install -y libtesseract-dev


#RUN wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
#RUN bash Anaconda-latest-Linux-x86_64.sh

COPY cheque1_crop.jpg /home/ocrApp/cheque1_crop.jpg
COPY main.py /home/ocrApp/main.py


CMD cd home/ocrApp && python main.py cheque1_crop.jpg && /bin/bash