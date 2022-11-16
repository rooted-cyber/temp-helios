FROM anasty17/mltb:latest
WORKDIR /maruf
RUN apt install git -y
RUN git clone https://github.com/rooted-cyber/hlios-thinng
RUN git clone https://github.com/arshsisodiya/helios-mirror
RUN cd helios*;pip3 install --no-cache-dir -r requirements.txt
RUN cd /maruf/hlio*;cp token* config* /maruf/helios*
RUN cd /maruf/helios*;bash start*
