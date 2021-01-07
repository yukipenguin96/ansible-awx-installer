# ansible-awx-installer

Ansible AWXをDocker-compose上に構築するためのコードです。

## 1.Ansibleのインストール
$ sudo sh ansible-install.sh

## 2.各種サービスのインストールとリポジトリをダウンロード
$ ansible-playbook awx-installer/install.yml

ansible awxのリポジトリはawx-installer/roles/aws/~~~/main.yml内で指定

## 3.リポジトリの内容を修正
$ cd ~/awx-repo/installer

$ sed -i -e "s/hosts: all/hosts: localhost/g" install.yml 

$ sed -i -e "s@#project_data_dir=/var/lib/awx/projects@project_data_dir=/var/lib/awx/projects@g" inventory 

### お好みでログインユーザとパスワードの変更
$ vi inventory

admin_user=admin

admin_password=password

## 4.Ansible awxのインストール
$ ansible-playbook -i inventory install.yml

