cred_file=boto.txt
machine_name=ubuntu@52.10.100.57
key_file=alexlamb.pem

scp -i ${key_file} ${cred_file} ${machine_name}:~/.boto

ssh -i ${key_file} -t ${machine_name} "sudo bash -s" <script
