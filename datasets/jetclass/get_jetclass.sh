mkdir -p raw
mkdir -p raw/train
mkdir -p raw/val
mkdir -p raw/test
mkdir -p processed
wget -O raw/test/JetClass_Pythia_test_20M.tar "https://zenodo.org/records/6619768/files/JetClass_Pythia_test_20M.tar?download=1"
for i in {0..0}; do
  wget -O "raw/train/JetClass_Pythia_train_100M_part${i}.tar" "https://zenodo.org/records/6619768/files/JetClass_Pythia_train_100M_part${i}.tar?download=1"
done
wget -O raw/val/JetClass_Pythia_val_5M.tar "https://zenodo.org/records/6619768/files/JetClass_Pythia_val_5M.tar?download=1"

cd $PROJPATH/datasets/jetclass/raw/test/
tar -xvf *
find . -type f -exec mv {} . \;
find . -type d -empty -delete

cd $PROJPATH/datasets/jetclass/raw/train/
tar -xvf *
find . -type f -exec mv {} . \;
find . -type d -empty -delete

cd $PROJPATH/datasets/jetclass/raw/val/
tar -xvf *
find . -type f -exec mv {} . \;
find . -type d -empty -delete
