FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -y wget unzip qrencode automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git zlib1g-dev 

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
