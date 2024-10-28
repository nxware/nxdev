FROM debian:stable

WORKDIR /root

COPY flash.sh .
RUN chmod +x flash.sh

COPY run_esp32.sh /
RUN chmod +x /run_esp32.sh

ARG DEBIAN_FRONTEND=noninteractive

# Update container
RUN apt-get update && apt-get upgrade -y

# Install dependencies
RUN apt-get install git wget flex bison gperf python3 python3-pip python3-setuptools python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 \
				libglib2.0-dev libpixman-1-dev libgcrypt20-dev libslirp-dev -y

# Install ESP-IDF
ENV PATH="~/.local/bin:${PATH}"
RUN mkdir -p ~/esp && cd ~/esp && git clone --quiet --recursive https://github.com/espressif/esp-idf.git && ln -s /usr/bin/python3 /usr/bin/python 
RUN cd ~/esp/esp-idf && export IDF_GITHUB_ASSETS="dl.espressif.com/github_assets" && ./install.sh && /bin/bash -c "source  ./export.sh"

# Install qemu
RUN git clone --quiet https://github.com/espressif/qemu.git \
		&& cd qemu \
		&& mkdir -p build \
		&& cd build \
		&& ../configure --target-list=xtensa-softmmu --without-default-features --enable-slirp  --enable-gcrypt \
		&& make -j $(nproc) vga=no \
		&& make install

RUN echo "alias idf='source /root/esp/esp-idf/export.sh'" >> .bashrc

CMD ["/run_esp32.sh"]