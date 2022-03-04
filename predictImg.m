% -------- Copyrights: Nousias George, 03/2022 --------
% PredictImg function predicts the output of a semantic segmentation neural
% network and returns a binary image. img is preprocessed in order
% to "fit" in segmNet
%
% inputs : img (an image array)
%          segmNet (a pretrained neural network for semantic segmentation)
%
% output : binaryImg (the result of neural network)

function [binaryImg] = predictImg(img,segmNet)
    
    str = strel('disk',10);

    initialSize = size(img);
    resizedImg = imresize(img,[256 256]);
    outputOfNet = semanticseg(resizedImg, segmNet);
    binaryImg = outputOfNet == 'Iris';
    binaryImg = imclose(binaryImg,str);
    
    binaryImg = imresize(binaryImg,initialSize(1:2));
end