#!/usr/bin/env bash

rm -rf flats/*
./node_modules/.bin/truffle-flattener contracts/HANDSCrowdsale.sol > flats/HANDSCrowdsale_flat.sol
./node_modules/.bin/truffle-flattener contracts/HANDSToken.sol > flats/HANDSToken_flat.so
