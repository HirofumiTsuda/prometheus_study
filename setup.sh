#!/usr/bin/env bash

set -e

mkdir -p library
pushd library
mkdir -p downloads
pushd downloads
wget https://github.com/prometheus/prometheus/releases/download/v2.55.0/prometheus-2.55.0.linux-amd64.tar.gz
tar zxvf ./prometheus-2.55.0.linux-amd64.tar.gz
pushd prometheus-2.55.0.linux-amd64
./prometheus --version
popd
popd
ln -s  downloads/prometheus-2.55.0.linux-amd64 prometheus
popd