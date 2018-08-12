deploy_kovan:
	MNEMONIC="phrase para la vida" truffle migrate --reset --force-sealing --network kovan

#0x0c27f87b1f02bda40edd5aa015d509bb445303de
#personal.unlockAccount("0x2Efda8749Aa30EA0d34519513dd41E90C1a5506B", "phrase para la vida")
# 0x2Efda8749Aa30EA0d34519513dd41E90C1a5506B
deploy_ropsten:
	MNEMONIC="phrase para la vida" truffle migrate --reset --force-sealing --network ropsten


#personal.unlockAccount("0x6C2900d68E83C165ce4f4760353A17fD49f7777B", "Hands2017$")

deploy_rinkeby:
	MNEMONIC="Hands2017$" truffle migrate --reset --force-sealing --network rinkeby

deploy_dev:
	truffle migrate --reset --network development

#ropsten_eth:
#	wget http://faucet.ropsten.be:3001/donate/0xBB5Ea47fc0282cD163729152874774cEfD49d81E
#kovan_eth:
#	https://app.chronologic.network/faucet
#import in geth
geth_import:
	web3.personal.importRawKey("aed60fb57d72d9a6773e67613e83465cfb6cf55c7709823b55ffd5581ca495e6", "phrase para la vida")

geth_update:
	geth account update  2efda8749aa30ea0d34519513dd41e90c1a5506b

geth_connect:
	geth attach http://127.0.0.1:8545

geth_attach:
	geth attach ipc:/Users/rebelius/Documents/rinkeby/chaindata/geth.ipc
geth:
	geth --testnet --syncmode "fast" --rpc --rpcapi db,eth,net,web3,personal,admin --cache=1024 --rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*" --bootnodes "enode://20c9ad97c081d63397d7b685a412227a40e23c8bdc6688c6f37e97cfbc22d2b4d1db1510d8f61e6a8866ad7f0e17c02b14182d37ea7c3c8b9c2683aeb6b733a1@52.169.14.227:30303,enode://6ce05930c72abc632c58e2e4324f7c7ea478cec0ed4fa2528982cf34483094e9cbc9216e7aa349691242576d552a2a56aaeae426c5303ded677ce455ba1acd9d@13.84.180.240:30303,enode://94c15d1b9e2fe7ce56e458b9a3b672ef11894ddedd0c6f247e0f1d3487f52b66208fb4aeb8179fce6e3a749ea93ed147c37976d67af557508d199d9594c35f09@192.81.208.223:30303" --verbosity=6
	geth --datadir=$HOME/.rinkeby --cache=512 --networkid=4  --ethstats='yournode:Respect my authoritah!@stats.rinkeby.io' --bootnodes="enode://a24ac7c5484ef4ed0c5eb2d36620ba4e4aa13b8c84684e1b4aab0cebea2ae45cb4d375b77eab56516d34bfbd3c1a833fc51296ff084b770b94fb9028c4d25ccf@52.169.42.101:30303"

#localhost instance
# ganache:
#  ganache-cli
