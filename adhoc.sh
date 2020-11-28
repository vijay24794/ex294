#!/bin/bash

echo " Yum repo configuration"

ansible all -m yum_repository -a 'name=BaseOS description="BaseOS Repo" baseurl=http://repo/BaseOS/ gpgcheck=no enabled=yes gpgkey=no'

ansible all -m yum_repository -a 'name=AppStream description="AppStream Repo" baseurl=http://repo/AppStream/ gpgcheck=no enabled=yes gpgkey=no'

