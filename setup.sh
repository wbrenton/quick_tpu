# download python 3.10
sudo apt-get update
sudo apt-get install -y -qq software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get install -y -qq python3.10-full python3.10-dev

# create venv and enter it
python3.10 -m ~/venv jax_venv
source ~/jax_venv/bin/activate

# install jax[tpu]
pip install "jax[tpu]>=0.2.16" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html

# install requirments.txt
pip install -r requirments.txt