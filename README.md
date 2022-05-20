
# GitLab installation on CentOs7 - Manual steps
`$ cat /etc/redhat-release`

`$ sudo yum install -y curl policycoreutils-python openssh-server perl`

`$ sudo systemctl status firewalld`

`$ sudo yum install postfix`

`$ curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash`

`$ sudo EXTERNAL_URL="http://192.168.0.110" yum install -y gitlab-ee`

For any modification edit the gitlab.rb file and reconfigure

`$ sudo vim /etc/gitlab/gitlab.rb`

`$ sudo gitlab-ctl reconfigure`
