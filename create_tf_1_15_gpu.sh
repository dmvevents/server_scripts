cd ~/Downloads
LATEST_ANACONDA=$(wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*\(https:\/\/repo\.anaconda\.com\/archive\/Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p')
wget $LATEST_ANACONDA
chmod +x Anaconda3*.sh # make it executable
./Anaconda3*.sh # execute the installer

#conda install -c conda-forge nb_conda_kernels
#conda install -c conda-forge notebook
#conda install -c conda-forge jupyterlab
#conda install -c conda-forge jupyter_contrib_nbextensions
#conda install pip
#conda create -n tf-1.15 tensorflow-gpu==1.15 pip ipykernel jupyterlab nb_conda_kernels jupyter_contrib_nbextensions pip

conda create -n tf-1.15 python=3.8 pip ipykernel jupyterlab nb_conda_kernels jupyter_contrib_nbextensions pip -c conda-forge
conda activate tf-1.15

pip install nvidia-pyindex
pip install nvidia-tensorflow[horovod]
pip install nvidia-tensorboard==1.15
pip install tf_slim
pip install scipy
pip install matplotlib

