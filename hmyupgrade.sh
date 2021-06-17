#!/bin/bash
# This script assumes the Harmony binary is installed as harmony in the users home directory

~/harmony -V
rm -r ~/hmybackup
mkdir ~/hmybackup
cp ~/harmony ~/hmybackup
curl -LO ~/hmybinary https://harmony.one/binary && mv ~/hmybinary ~/harmony && chmod +x ~/harmony
sudo service harmony restart
~harmony -V
