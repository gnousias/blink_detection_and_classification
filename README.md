# Blink detection and classification
Blinking or blink patterns have been related with various pathological and neurological diseases, such as Computer Vision Syndrome, Tourette syndrome 
or even with Schizophrenia and Parkinson disease.

This repository aims to introduce and make publicly a recent proposed methodology for blink detection and classification. For more details, see
this [paper](https://ieeexplore.ieee.org/abstract/document/9721639?casa_token=k2CNVAAC0SMAAAAA:jj4bMR1gsNPYAHqOpnHOWjcae5ihyuBYE20JNBfmSkjyYNpSF-T00WFPvzTNfqbznY3Pkwk3Cw).

A short demo is provided where a sample image (close distance face image) is used to segment each area of eye in two categories, iris and sclera (also known as eyelids).
In the main script, two .mat files are loaded. Those contain a pretrained instance of DeepLabv3+ neural network, each one for each category (iris and eyelids).
