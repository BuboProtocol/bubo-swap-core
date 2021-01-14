#!/usr/bin/env bash

# Flats Contracts
mkdir -p flats
rm -rf flats/*
./node_modules/.bin/truffle-flattener contracts/PancakeFactory.sol > flats/PancakeFactory.sol

