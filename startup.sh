#!/bin/bash

echo <<EOF > /root/starup.sh
eval $(ssh-agent)
ssh-add /root/.ssh/id_rsa
git clone https://github.com/mememeil/cloud-build-test.git /root/cloud-build-test
inspec exec cloud-build-test/inspec/controls/test-server1.rb -t ssh://kodhikodhi@10.138.0.11 > /home/kodhikodhi/result 2>&1
EOF

. ./starup.sh