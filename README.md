# Stakepool for ExchangeCoin docker example

This repository is an example how to start Stakepool for ExchangeCoin using Docker.

## Requirements
- Docker
- OpenSSL
- Docker Compose (optional)

## Usage
1. Generate certificates (in directory `certs` start script `gen_certs.sh`).
2. Create or mount wallets for exccwallet and exccwallet2 services and edit config files in `conf` directory.
3. Run all services `docker-compose up --build`. 
