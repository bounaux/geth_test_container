# geth_test_container
Private Ethereum Node For Testing

This is a private Ethereum node for testing purpose only. 

A random number of 1994911 was chosen as the network ID.

A random port number of 8085 was chosen as the HTTP listening port. 

To run the docker image, use this command line: 

docker run <chosen name>  geth --http --http.port 8085 --datadir "./Blockchain-data/" --networkid 1994911 --http.api debug,eth,web3,personal,net,admin
