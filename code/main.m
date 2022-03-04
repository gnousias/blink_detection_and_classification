% -------- Copyrights: Nousias George, 03/2022 --------
% A sample main script for iris and sclera (eyelids) semantic segmentation
% using a state of the art deep neural network, DeepLabv3+

clear; clc;

% Check if the mobilenetv2 is installed
isMobileNetInstalled = matlab.addons.isAddonEnabled('Deep Learning Toolbox');
if isMobileNetInstalled==0
    warning('mobilenetv2 is not installed');
    warning('You should install the Deep Learning Toolbox from Add-Ons in order to run the script');
else
    % Load the pretrained models for iris and eyelid segmentation
    iris = load('iris_deeplabv3+.mat','net');
    eyelids = load('eyelid_deeplabv3+.mat','net');
    irisNet = iris.net;
    eyelidsNet = eyelids.net;
    
    % Read a sample image and detect iris and eyelids for both eyes
    sampleImg = imread('sample_img.tif');
    
    binaryIris = predictImg(sampleImg,irisNet);
    binaryEyelids = predictImg(sampleImg,eyelidsNet);
    
    %  Combine the two binary results of each neural network
    finalBinary = uint8(binaryIris)+uint8(binaryEyelids);
    
    B = labeloverlay(sampleImg, finalBinary);
    figure; imshow(B);
end