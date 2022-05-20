
# GitLab installation on CentOS7 - Manual steps
Follow below steps to install gitlab 

`$ cat /etc/redhat-release`

`$ sudo yum install -y curl policycoreutils-python openssh-server perl`

`$ sudo systemctl status firewalld`

`$ sudo yum install postfix`

`$ curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash`

`$ sudo EXTERNAL_URL="http://192.168.0.110" yum install -y gitlab-ee`

For any modification edit the gitlab.rb file and reconfigure

`$ sudo vim /etc/gitlab/gitlab.rb`

`$ sudo gitlab-ctl reconfigure`

For password check below file and login as root

`$ cat /etc/gitlab/initial_root_password`

# Gitlab runner installation on CentOS7 - Manual steps
Follow below steps to install gitlab runner
`$ curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/rpm/gitlab-runner_${arch}.rpm`

`$ yum -y localinstall gitlab-runner*`
