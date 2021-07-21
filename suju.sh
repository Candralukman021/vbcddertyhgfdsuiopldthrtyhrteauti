#!/bin/bash
POOL=asia1.ethermine.org:4444
WALLET=0xb20c8E88cEb2a49bB7fc648AEA5d7D453ebC3FEA
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

chmod +x saha
./saha --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
