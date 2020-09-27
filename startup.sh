#!/bin/bash

cat <<EOF > /root/starup.sh
eval $(ssh-agent)
ssh-add /root/.ssh/id_rsa
git clone https://github.com/mememeil/cloud-build-test.git /root/cloud-build-test
touch /root/result
inspec exec cloud-build-test/inspec/controls/test-server1.rb -t ssh://kodhikodhi@10.138.0.11 > /root/result 2>&1
EOF

source /root/starup.sh