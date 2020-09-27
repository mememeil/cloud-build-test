#!/bin/bash

su - kodhikodhi <<EOF
git clone https://github.com/mememeil/cloud-build-test.git cloud-build-test
# eval $(ssh-agent)
ssh-add
inspec exec cloud-build-test/inspec/controls/test-server1.rb -t ssh://kodhikodhi@10.138.0.10 2> /home/kodhikodhi/result1
EOF