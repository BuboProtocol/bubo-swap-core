# Bubo Factory

# Local Development

The following assumes the use of `node@>=10`.

## Install Dependencies

`yarn`

## Compile Contracts

`yarn compile`

## Run Tests

`yarn test`

### Initialize project libraries
The following libraries are necessary to be able to execute the smart contracts.
```
sudo npm i truffle -g
sudo npm i ganache-cli -g
npm i
```

### Power on development environment
Turn on the development environment for testing and running the tests.
```
ganache-cli
```

### Truffle commands
These commands are the ones necessary to compile smart contracts.
```
truffle compile
```

Select the network in which you are going to work to upload the smart contracts to the blockchain network
```
truffle migrate --network development --reset --compile-all
truffle migrate --network bsc --reset --compile-all
truffle migrate --network bsc_testnet --reset --compile-all
```

### Build in production

1. Add a file called `.env` in the root of this repo and edit it, adding a line with your Private Key, somethink like:
 ```
MNENOMIC=PRIVATE_KEY
BSCSCAN_API_KEY=BSCSCAN_API_KEY
 ```
 and save it.
 
8. Enjoy your working BSC dApp!

### Smart contracts flattener

This command will create a single file of each smart contract, including its necessary libraries and others, this is necessary if you upload a single file to the verification of the smart contract in bscscan, but if you are going to upload multiple files for verification, the command is not necessary.

 ```
 sudo chmod +x ./flatten.sh
./flatten.sh
 ```

 ### Smart contracts (compile, verify, flattener)

This command is used to compile the contracts, upload them to the network, verify them and create a flat file of the smart contracts.

 ```
 sudo chmod +x ./setup.sh
./setup.sh
 ```

### What else?

If you have questions, drop me a line at contact@bubo.io
