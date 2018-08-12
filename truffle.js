require('dotenv').config();
// require('babel-register');
// require('babel-polyfill');

const HDWalletProvider = require('truffle-hdwallet-provider');

const providerWithMnemonic = (mnemonic, rpcEndpoint) =>
  new HDWalletProvider(mnemonic, rpcEndpoint);

const infuraProvider = network => providerWithMnemonic(
  process.env.MNEMONIC || '',
  `https://${network}.infura.io/${process.env.INFURA_API_KEY}`
);

const ropstenProvider = process.env.SOLIDITY_COVERAGE
  ? undefined
  : infuraProvider('ropsten');

module.exports = {
  networks: {
    // livenet: {
    //   host: "localhost",
    //   port: 8546,
    //   network_id: "1" // Match any network id
    // },
    development: {
      host: "localhost",
      port: 8545,
      gas: 6721975,
      network_id: "*" // Match any network id
    }
   //  ,ropsten:  {
   //   network_id: 3,
   //   host: "localhost",
   //   port:  8545,
   //   gas:   2900000
   // }

   ,rinkeby: {
     host: "localhost",
     port: 8545,
     network_id: "4", // Rinkeby ID 4
     from: "0x6C2900d68E83C165ce4f4760353A17fD49f7777B", // account from which to deploy
     gas: 4612388
    }
    //Address [ 0x93f201ed9a6c4205ff54617f4093e525d224a8d0 ] "phrase para la vida"
    ,kovan: {
      provider: infuraProvider('kovan'),
      gas: 8000000,
      network_id: "42" // Match any network id
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
};
