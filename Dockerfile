FROM kalilinux/kali-rolling:latest

RUN apt-get update \
&& apt-get install -y -q git vim metasploit-framework ettercap-text-only \
&& apt-get clean \
&& cd ~ \
&& git clone https://github.com/TheoMartos/TCPSynflood.git \
&& mkdir obj

CMD /bin/bash