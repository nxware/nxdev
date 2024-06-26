FROM ubuntu

RUN apt update
RUN apt -y upgrade
RUN apt install -y python3 python3-pip wget git curl
RUN sh -c 'rm /usr/lib/python3.*/EXTERNALLY-MANAGED' ; exit 0
RUN ln -s /usr/bin/python3 /usr/bin/python


# KI
RUN pip install torch transformers
RUN pip install flask
RUN pip install git+https://gitlab.com/bsalgert/nwebclient.git

RUN apt install -y npm

RUN pwd

CMD ["/bin/bash"]