cd ~/Downloads
LATEST_ANACONDA=$(wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*\(https:\/\/repo\.anaconda\.com\/archive\/Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p')
wget $LATEST_ANACONDA
chmod +x Anaconda3*.sh # make it executable
./Anaconda3*.sh # execute the installer

conda install -c conda-forge notebook
conda install -c conda-forge nb_conda_kernels

conda install -c conda-forge jupyterlab
conda install -c conda-forge nb_conda_kernels

conda install -c conda-forge jupyter_contrib_nbextensions

conda install pip

conda create -n tf-2.0  python=3.8 tensorflow-gpu pip ipykernel jupyterlab nb_conda_kernels pip cudatoolkit=11.1 -c conda-forge


pip install tf_slim
pip install tensorflow.io
pip install matplotlib
pip install tf-models-official
pip install lvis

Hi, @Neeraj1108Yadav can you share your pipeline config file, I think that you set "ssd_mobilenet_v2" as type of your feature_extractor. It happened with me, set "ssd_mobilenet_v2_keras" and try again.

model {
    ssd {
          ...
          feature_extractor {
                type: 'ssd_mobilenet_v2_keras'
                 ...
           }
          ...
    }
...
}

