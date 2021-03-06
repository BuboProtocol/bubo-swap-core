#!/usr/bin/env bash

# Deploy contracts
truffle migrate --reset --network bsc_testnet

# Verify Contracts on Etherscan
truffle run verify PancakeFactory --network bsc_testnet --license SPDX-License-Identifier

# Flats Contracts
mkdir -p flats
rm -rf flats/*
./node_modules/.bin/truffle-flattener contracts/PancakeFactory.sol > flats/PancakeFactory.sol



