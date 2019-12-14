FROM kalilinux/kali-rolling:latest

RUN apt-get update \
&& apt-get install -y -q git metasploit-framework ettercap-text-only \
&& apt-get clean \
&& git clone https://github.com/TheoMartos/TCPSynflood.git

CMD /bin/bash