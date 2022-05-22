
# GitLab installation on CentOS7 - Using bash script
`$ curl https://raw.githubusercontent.com/prayag-sangode/gitlab-install-config/main/gitlab-install.sh | sudo bash`

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

`$ curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh | sudo bash`

`$ yum -y install gitlab-runner`

After installation register runner on Gitlab server

`$ sudo service gitlab-runner status`

`$ gitlab-runner register`

or 
`$ sudo gitlab-runner register --url https://gitlab.example.com/ --registration-token $REGISTRATION_TOKEN`

# Gitlab Container Registry 

Follow below steps to deploy tokens

`Project >> Packages & Registries >> Container Registry`

Authenticate to the Container Registry by using your GitLab username and password

`docker login gitlab.example.com:5050`

You can add an image to this registry with the following commands:

`docker build -t gitlab.example.com:5050/gitlab-instance-628ca2a0/html-site .`

`docker push gitlab.hostbread.com:5050/gitlab-instance-628ca2a0/html-site`
