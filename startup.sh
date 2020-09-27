#!/bin/bash

su - kodhikodhi <<EOF
git clone https://github.com/mememeil/cloud-build-test.git cloud-build-test
EOF
eval $(ssh-agent)
ssh-add /root/.ssh/id-rsa
inspec exec cloud-build-test/inspec/controls/test-server1.rb -t ssh://kodhikodhi@10.138.0.10 > /home/kodhikodhi/result 2>&1