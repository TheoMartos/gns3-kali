FROM kalilinux/kali-rolling:latest

RUN apt-get update \
&& apt-get install -y -q metasploit-framework ettercap-text-only \
&& apt-get clean

CMD /bin/bash