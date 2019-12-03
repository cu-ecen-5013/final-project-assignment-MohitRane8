#!/bin/bash
#Script to build files from local directory and send executables to BBB
#Author: Mohit Rane

#set local directory
LOCAL='AESD_PROJECT_OVERRIDE_SRCDIR=/home/mohit/Documents/Mohit-Amogh-Final-ProjectSource/'

#build from local directory
cd ./buildroot
sudo make $LOCAL aesd-project-rebuild all

#send executable to BBB
if [ $# -eq 1 ]
then
    cd ./output/target/bin
    sshpass -p 'root' scp $1 root@10.0.0.181:/bin/
fi
echo Transferred $1 to /bin/ of BBB