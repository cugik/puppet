#!/bin/sh 
sudo puppet apply /home/cugik/puppet/manifests/site.pp --modulepath=/home/cugik/puppet/modules/ $*
