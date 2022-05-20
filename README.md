
# GitLab installation on CentOS7
<sub> cat /etc/redhat-release </sub>

> sudo yum install -y curl policycoreutils-python openssh-server perl

> sudo systemctl status firewalld

> sudo yum install postfix

> curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash

> sudo EXTERNAL_URL="http://192.168.0.110" yum install -y gitlab-ee

> sudo vim /etc/gitlab/gitlab.rb

> sudo cat /etc/gitlab/gitlab.rb | grep -i external_url

> sudo gitlab-ctl reconfigure
