## Author: Ankit Sharma
## Date: 17-10-2020
## this script will setup rails 
## to run this script allow execute permission on setup.sh script
echo "Please Enter your Ip"
read $ip
echo "please enter your Hostname"
read $host
echo "$ip $host"

if [ $? -eq 0 ]
  then  
    yum install git
    yum install epel-release -y && yum install ansible -y
    
    if  [ $? -eq 0 ]
      then
         ansible-playbook rails.yml
       else
       exit 0
     fi
fi
