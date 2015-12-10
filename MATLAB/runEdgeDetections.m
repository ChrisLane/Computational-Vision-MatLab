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

% APPLY FILTERS
% Simple Gradient
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