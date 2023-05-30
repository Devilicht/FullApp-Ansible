#/bin/sh
sudo yum -y install epel-release
echo "inicio da instalacao do ansible"
sudo yum -y install ansible

cat << EOT >> /etc/hosts
192.168.60.100 control-node
192.168.60.101 app01
192.168.60.102 db01
EOT

cat << EOT >> /etc/ansible/hosts
[web]
192.168.60.101 app01

[db]
192.168.60.102 db01
EOT

ssh-keygen