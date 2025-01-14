To run any of the notebooks, you need to create a `.h5` file that stores the results for each model. To evaluate your models, run the following command-

```
python evaluate_model.py <options>
```

The available options are:

```
  -h, --help            show this help message and exit
  --outdir OUTDIR       Output directory for evaluation results
  --data-type {topdata,jetclass,JNqgmerged,jetnet}
                        Dataset to evaluate on
  --make-file           Set this flag when recording evaluation results
  --data-loc DATA_LOC   Directory for data
  --modeldir MODELDIR   Directory for trained model parameters
  --modeldictdir MODELDICTDIR
                        Directory for trained model metadata
  --tag TAG             Optional tag to only store results of certain models with tag in the name
  --type {ensemble,edl,dropout}
                        Type of model to evaluate
  --batch-mode          Set this flag when running in batch mode to suppress tqdm progress bars
```

The different notebooks contain the uncertainty quantification and out-of-distribution studies performed for each of the different models. The content of each notebooks is summarized below.


- **FeatureHists.ipynb**: Obtain some of the feature histograms
- **EDL-Evaluation.ipynb**: Contains basic evaluation of the EDL models by calculating their accuracies, AUROC, and AUROC-STD. Contains figures examining EDL-based uncertainty.
- **MCDO-Evaluation.ipynb**: Contains basic evaluation of the MCDO models by calculating their accuracies, AUROC, and AUROC-STD. Contains figures examining EDL-based uncertainty.
- **Ensemble-Evaluation.ipynb**: Contains basic evaluation of the Ensemble models by calculating their accuracies, AUROC, and AUROC-STD. Contains figures examining EDL-based uncertainty.
- **UQ-Explorer.ipynb**: Performs Principal Component Analysis (PCA) on the latent space and analyzes uncertanties on the latent space.
- **PFIN-Explorer.ipynb**: Performs feature ranking using $\Delta$AUC score,  MAD Relevance scores, mean deviation in probabilities, and mean deviation in uncertanties for input and latent space features. Obtains correlation matrics
- **PFIN-UQ-Corr.ipynb**: Obtain correlation matrices between PCA on the latent space features and input/jet features
- **ComparativePlotter.ipynb**: Obtain various plots comparing the uncertainty and accuracy between the EDL, Ensemble, and MCDO models



