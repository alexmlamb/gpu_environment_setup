# gpu_environment_setup
Github repository that has code for setting up an environment for running with Theano.  Useful for AWS instances.  

Use with AWS GPU Instance, with this OS image: 

Instructions: 

1.  Get AWS GPU Instance (g2.2 is probably best) with this community OS image: 
  ami-39296709

2.  On your own machine, run: 
  git clone https://github.com/alexmlamb/gpu_environment_setup

3.  Get S3 permissions setup by writing credentials into a ~/.boto file:

  [Credentials]

  aws_access_key_id = 
  
  aws_secret_access_key = 
  
4.  Change the variables at the top of gpu_environment_setup/setup.sh

5.  Run "sh gpu_environment_setup/setup.sh"
