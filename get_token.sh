#!/bin/bash
cncfkubectl.sh -n kube-system describe secret $(cncfkubectl.sh -n kube-system get secret | grep admin-user | awk '{print $1}')
