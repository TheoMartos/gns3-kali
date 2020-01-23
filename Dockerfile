FROM kalilinux/kali-rolling:latest

RUN apt-get update \
&& apt-get install -y -q git vim metasploit-framework ettercap-text-only \
&& apt-get clean \
&& mkdir /root/TCPSynflood \
&& git clone https://github.com/TheoMartos/TCPSynflood.git /root/TCPSynflood \
&& mkdir /root/TCPSynflood/obj

CMD /bin/bash