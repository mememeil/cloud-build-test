#! bin/bash

git clone https://github.com/mememeil/cloud-build-test.git

inspec exec cloud-build-test/inspec/controls/test-server1.rb -t ssh://kodhikodhi@10.138.0.9 > /home/kodhikodhi/result1