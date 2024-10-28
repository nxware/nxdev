# see https://github.com/gitpod-io/openvscode-releases/blob/main/Dockerfile
# see https://github.com/gitpod-io/openvscode-server
FROM gitpod/openvscode-server
RUN apt update && apt install python-is-python3 python3-pip && pip install nwebclient
# docker run -it --init -p 3000:3000 -v "$(pwd):/home/workspace:cached" ide