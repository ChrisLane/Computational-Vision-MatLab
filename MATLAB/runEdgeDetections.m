% Load all filters
load('filters/filters.mat');

% Import images
img9343 = imread('9343 AM.bmp');
img10905 = imread('10905 JL.bmp');
img43590 = imread('43590 AM.bmp');

% Set image to only the green channel intensity
img9343 = img9343(:,:,2);
img10905 = img10905(:,:,2);
img43590 = img43590(:,:,2);

% Change image representations to double to stop MatLab complaints
img9343 = im2double(img9343);
img10905 = im2double(img10905);
img43590 = im2double(img43590);

img = img9343;
refEdgeImage = 1- im2bw(cdata);
% APPLY FILTERS
% Simple Gradient
<<<<<<< Updated upstream
imgSimpleGradient = fapXY(img, difference_gradient_filterX, difference_gradient_filterY, 1);
% Roberts
imgRoberts = fapXY(img, robertsX, robertsY, 1);
% Sobel
imgSobel = fapXY(img, sobelX, sobelY, 1);
% First Order Gaussian
imgFOD = fap(img, first_order_gaussian_filter_1d_length5, 1);
% Laplacian
imgLaplacian = abs(fap(img, laplacian, 1));
% Laplacian of Gaussian
imgLOG = abs(fap(img, laplacian_of_gaussian, 1));
=======
imgSimpleGradient = fapXY(img, difference_gradient_filterX, difference_gradient_filterY, 0.04);
% Roberts
imgRoberts = fapXY(img, robertsX, robertsY, 0.04);
% Sobel
imgSobel = fapXY(img, sobelX, sobelY, 0.4);
% First Order Gaussian
imgFOD = fap(img, first_order_gaussian_filter_1d_length5, 0.04);
% Laplacian
imgLaplacian = abs(fap(img, laplacian, 0.04));
% Laplacian of Gaussian
imgLOG = abs(fap(img, laplacian_of_gaussian, 0.05));

% Apply ROC Analisys to all images and concatenate results in array
sgroc = myroc(1-imgSimpleGradient,refEdgeImage); 
robroc = myroc(1-imgRoberts,refEdgeImage); 
sobroc = myroc(1-imgSobel,refEdgeImage); 
fodroc = myroc(1-imgFOD,refEdgeImage);
laplroc = myroc(1-imgLaplacian,refEdgeImage);
logroc = myroc(1-imgLOG,refEdgeImage);
% Plot ROC results for this image
figure
plot(1-sgroc(1),sgroc(2),':*',1-robroc(1),robroc(2),':*',1-sobroc(1),sobroc(2),':*',1-fodroc(1),fodroc(2),':*',1-laplroc(1),laplroc(2),':*',1-logroc(1),logroc(2),':*')
xlabel('False Positive Rate (FPR)')
ylabel('True Positive Rate (TPR)')
title('Receiver Operating Characteristic analysis')
legend('Gradient','Roberts','Sobel', 'Gaussian', 'Laplacian', 'LoG')
axis([0 1 0 1])
>>>>>>> Stashed changes
