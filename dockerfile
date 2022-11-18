FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y software-properties-common && \
	rm -rf /var/lib/apt/lists/* && \
	add-apt-repository ppa:ethereum/ethereum && \
	apt-get install -y ethereum

RUN mkdir Blockchain-data 
COPY genesis.json ./Blockchain-data/genesis.json

RUN geth --http --http.port 8085 --datadir "./Blockchain-data/" init "Blockchain-data/genesis.json"

# RUN geth --http --http.port 8085 --datadir "./Blockchain-data/" --networkid 1994911 --http.api debug,eth,web3,personal,net,admin
