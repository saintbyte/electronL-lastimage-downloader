#!/bin/bash
set +ui
set -x
cd /root/tmp/electro_git/
./get_by_bash.sh
./delete_old.sh
./delete_zero.sh