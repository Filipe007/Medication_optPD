# Medication_optPD

![Build Status](https://img.shields.io/badge/Build-Proof_of_Concept_(PoC)-brightgreen)
![License: CC](https://img.shields.io/badge/License-CC-yellow.svg)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)




## Overview
This repository contains the code and data related to the master's thesis. The project focuses on the impact of electroencephalography (EEG) and drug monitoring in the diagnosis and treatment of Parkinson's Disease (PD). The goal is to demonstrate the potential use of EEG for evaluating medications in PD and highlight the limitations of currently available public datasets.

### Abstract
Parkinson’s disease (PD) detection remains an ongoing challenge as there is no specific test for its diagnosis. Recent advancements in machine learning (ML) have shown great potential in medical applications. This project explores the use of EEG and sample entropy (SampEn) in detecting and optimizing medication for PD. The study aims to address the high costs associated with current diagnostic tests like MRI, CT, and DAT-scan, and present EEG as a cost-effective alternative.

### First Datasets: FilipeDatasetv1
By the Cognitive Rhythms and Computation Lab at University of New Mexico

Dataset link:
https://www.sciencedirect.com/science/article/abs/pii/S0006899319305955
This dataset is referenced as FilipeDatasetv1.
FilipeDataset_PDsubdivided

### Second dataset: FilipeDataset_PDsubdivided
It is linked to the data set FilipeDatasetv1.
Each PD patient was divided into 4 subsets of 52 seconds, available in the file FilipeDataset_PDsubdivided.


### Third dataset: FilipeDatasetv3
By the University of Iowa

Dataset link:
https://narayanan.lab.uiowa.edu/article/datasets
Associated with the paper: Resting-state EEG measures cognitive impairment in Parkinson’s disease.
Meta data was used to run a multi-layer perceptron (MLP) in MATLAB.
### Original Code
The original code is linked to the work "An open-source EEGLAB plugin for computing entropy-based measures on MEG signals" https://osf.io/preprints/psyarxiv/xwmyk and can be downloaded
https://github.com/amisepa.

### Materials and Methods
Two studies were conducted. The first one involved analyzing medication using sample
entropy (SamplEn), while the second one was a proof of concept (PoC) for a regression
model intended for use by medical professionals to predict LEDD.

### Results
Sample Entropy (SamplEn) can be used as a feature to evaluate the impact of medication. This feature can be incorporated into a set of machine
learning attributes for effective model training and predictions.
Results computed using MLP regression models show very poor performance, especially regarding the null hypothesis and statistical significance. The Pearson correlation
coefficient indicates a very low linear relationship between the variables, and the p-value
is significantly higher than 0.05.

### Discussion
The potential of EEG and sample entropy (SampEn) in optimizing medication for Parkinson's disease (PD) patients was 
analyzed. 
The results demonstrated that SampEn is a reliable method for detecting the impact of medication on brain activity in PD patients.

Based on current research, it is not possible to develop a regression model to predict LEDD because there are no 
biomarkers and blood test data that provide detailed insights into the LEDD processes for each individual patient.
It corroborates the findings from paper: Twenty years of dopamine research: individual differences
in the response of accumbal dopamine to environmental and pharmacological challenge.
https://www.sciencedirect.com/science/article/abs/pii/S0014299908002781.

### Limitations
The limitations of both quantitative and qualitative datasets played a crucial role, as researchers we are constrained by the available public EEG datasets.
The dataset used does not include activities of daily living (ADL), blood tests, and recurrent visits of the patients. 
