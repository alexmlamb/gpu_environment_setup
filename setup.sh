sudo apt-get update

sudo apt-get install build-essential

sudo apt-get install python-dev

wget http://pypi.python.org/packages/source/p/pip/pip-1.1.tar.gz#md5=62a9f08dd5dc69d76734568a6c040508
tar -xvf pip*.gz
cd pip*
sudo python setup.py install

sudo apt-get install linux-image-generic

sudo ldconfig /usr/local/cuda/lib64

apt-get install nvidia-cuda-toolkit

sudo apt-get update

sudo wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb  

sudo dpkg -i cuda-repo-ubuntu1404_7.0-28_amd64.deb  

sudo apt-get update
sudo apt-get install -y cuda # this takes a while
echo -e "\nexport PATH=/usr/local/cuda-7.0/bin:$PATH\n\nexport LD_LIBRARY_PATH=/usr/local/cuda-7.0/lib64" >> .bashrc

# setup theano
cat <<EOF >~/.theanorc
[global]
floatX = float32
device = gpu0
[nvcc]
fastmath = True
EOF


sudo apt-get install gcc --fix-missing

export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future

sudo apt-get install python-numpy python-scipy python-dev python-pip python-nose g++ libopenblas-dev git

sudo pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

export PATH=$PATH:/usr/local/cuda/bin/

python -i -c 'import theano'
