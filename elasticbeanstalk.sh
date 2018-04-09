#!/bin/bash


pip install --upgrade pip 
pip install --upgrade virtualenv
pip install boto awscli
virtualenv ~/eb-ve
source ~/eb-ve/bin/activate
pip install awsebcli --upgrade
mkdir ~/.aws
touch ~/.aws/config
chmod 600 ~/.aws/config
echo "[profile eb-cli]" > ~/.aws/config
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> ~/.aws/config
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> ~/.aws/config
eb init --region us-east-1 --platform php php-yii
eb deploy PhpYii-env
deactivate
