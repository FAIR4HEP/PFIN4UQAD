# PFIN4UQAD

This repository contains the necessary code and documents the results of examining the performance of evidential deep learning (EDL) for uncertainty quantification (UQ) and out-of-distribution detection (OOD) jet identification. We utilize the `Particle Flow Interaction Network (PFIN)` model from our [previous paper](https://dx.doi.org/10.1088/2632-2153/ace0a1). The architecture and implementation of EDL for classification is first reviewed and compared in the paper titled **Evidential Deep Learning to Quantify Classification Uncertainty** (DOI: https://dx.doi.org/10.48550/arXiv.1806.01768).

# Preparing the repository
To train/retrain models and run the notebooks provided with this repository, one needs to create the right environment and install certain dependencies. First `cd` to the project's top directory and do

`export PROJPATH=$PWD`


## Setup necessary environment! 
This step required anaconda installation. Please visit https://anaconda.org/ and follow the instructions there to install and setup `Anaconda`. Then run the following commands:
```
cd $PROJPATH
conda create --name uqad --file requirements.txt
conda activate uqad
```

## Download Datasets

This repository provides scripts to download and prepare the datasets used in our studies. The datasets include:

- **TopData**: Used in the study **Deep-learned Top Tagging with a Lorentz Layer** by Butter et al (DOI: http://dx.doi.org/10.21468/SciPostPhys.5.3.028).
- **JetNet**: Used in the study **Particle Cloud Generation with Message Passing Generative Adversarial Networks** by Kansal et al (DOI: 
https://dx.doi.org/10.48550/arXiv.2106.11535).
- **JetClass**: Used in the study **Particle Transformer for Jet Tagging** by Qu et al (DOI: 
https://dx.doi.org/10.48550/arXiv.2202.03772).


### TopData
The **TopData** dataset can be downloaded from [this link](https://desycloud.desy.de/index.php/s/llbX3zpLhazgPJ6). Follow these steps to download and store it for processing:

```bash
cd $PROJPATH
cd datasets/topdata
chmod +x get_topdata.sh
./get_topdata.sh
```

### JetNet
The **JetNet** dataset can be downloaded from [this link](https://zenodo.org/records/6619768). Follow these steps to download and store it for processing:

```bash
cd $PROJPATH
cd datasets/jetnet
chmod +x get_jetnet.sh
./get_jetnet.sh
```

### JetClass
The **JetClass** dataset can be downloaded from [this link](https://zenodo.org/records/6619768). Follow these steps to download and store it for processing:

```bash
cd $PROJPATH
cd datasets/jetclass
chmod +x get_jetclass.sh
./get_jetclass.sh
```


## Data pre-processing
To preprocess all the datasets, necessary scripts are given within the `datasets` directory. 

### TopData Preprocessing
For the **TopData** preprocessing, run the following commands:

```
cd $PROJPATH/datasets/topdata
python3 topdata_preprocess.py
```

### JetNet Preprocessing
For the **JetNet** preprocessing, run the following commands:

```
cd $PROJPATH/datasets/jetnet
python3 jetnet_preprocess.py
```
The preprocessed data will be stored in the `jetnet/processed` subdirectory.

### JetClass Preprocessing
For the **JetClass** preprocessing, run the following commands:

```
cd $PROJPATH/datasets/jetclass
python3 jetclass_preprocess.py <datasetname>
```
where `datasetname` can be either `train`, `val`, or `test`. The preprocessed data will be stored in the `jetclass/processed` subdirectory.


# Training your own models
For each model architecture, we have trained a number of alternate variants and they are hosted in the `models/trained_models` directories. The necessary metadata for each model is given as `json` files in the `models/trained_model_dicts` directories. If you are interested in training your own models, please follow the instructions in the `README` file within the `models` directory. Setting up the conda environment with the command `conda activate uqad` should setup the right environment.

# Reproducing UQ and OOD results
The studies associated with uncertainty quantification and out-of-distribution detection are recorded in notebooks hosted in the `evaluation/` directory. Each notebook is self-contained but **they rely on avaliability of the pretrained models and the datasets in the way they have been setup in the previous section**. The content of each notebook is explained in the `README` file provided in `evaluation/` directory.

Run the following commands to make the necessary directories
```
cd $PROJPATH
mkdir -p evaluation/figures
mkdir -p evaluation/results
```

# Reference
The studies in this repository are compiled and explained in this paper: [Evidential Deep Learning for Uncertainty Quantification and Out-of-Distribution Detection in Jet Identification using Deep Neural Networks
](https://arxiv.org/abs/2501.05656)

To cite this work, please add-
```
A Khot, X Wang, A Roy, V Kindratenko, MS Neubauer. Evidential Deep Learning for Uncertainty Quantification and Out-of-Distribution Detection in Jet Identification using Deep Neural Networks. arxiv preprint arXiv:2501.05656.
```
or use the following `bibtex` entry-
```
@article{khot2025edl,
  title={Evidential Deep Learning for Uncertainty Quantification and Out-of-Distribution Detection in Jet Identification using Deep Neural Networks},
  author={Khot, Ayush and Wang, Xiwei and Roy, Avik and Kindratenko, Volodymyr and Neubauer, Mark S},
  journal={arXiv preprint arXiv:2501.05656},
  year={2025}
}
```


# Contact:
For comments, feedback, and suggestions: Mark Neubauer (msn@illinois.edu) and Ayush Khot (akhot2@illinois.edu)
