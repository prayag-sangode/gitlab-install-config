sudo apt update
sudo apt install ca-certificates curl openssh-server postfix tzdata perl
cd /tmp
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash /tmp/script.deb.sh
sudo apt install gitlab-ce
cat /etc/gitlab/gitlab.rb
external_url 'https://your_domain' or 'IP'
sudo gitlab-ctl reconfigure
sudo cat /etc/gitlab/initial_root_password
