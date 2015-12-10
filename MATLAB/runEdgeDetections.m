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

% APPLY FILTERS
% Simple Gradient
imgSimpleGradient9343 = fapXY(img9343, difference_gradient_filterX, difference_gradient_filterY, 1);
imgSimpleGradient10905 = fapXY(img10905, difference_gradient_filterX, difference_gradient_filterY, 1);
imgSimpleGradient43590 = fapXY(img43590, difference_gradient_filterX, difference_gradient_filterY, 1);
% Roberts
imgRoberts9343 = fapXY(img9343, robertsX, robertsY, 1);
imgRoberts10905 = fapXY(img10905, robertsX, robertsY, 1);
imgRoberts43590 = fapXY(img43590, robertsX, robertsY, 1);
% Sobel
imgSobel9343 = fapXY(img9343, sobelX, sobelY, 1);
imgSobel10905 = fapXY(img10905, sobelX, sobelY, 1);
imgSobel43590 = fapXY(img43590, sobelX, sobelY, 1);
% First Order Gaussian
imgFOD9343 = fap(img9343, first_order_gaussian_filter_1d_length5, 1);
imgFOD10905 = fap(img10905, first_order_gaussian_filter_1d_length5, 1);
imgFOD43590 = fap(img43590, first_order_gaussian_filter_1d_length5, 1);
% Laplacian
imgLaplacian9343 = abs(fap(img9343, laplacian, 1));
imgLaplacian10905 = abs(fap(img10905, laplacian, 1));
imgLaplacian43590 = abs(fap(img43590, laplacian, 1));
% Laplacian of Gaussian
imgLOG9343 = abs(fap(img9343, laplacian_of_gaussian, 1));
imgLOG10905 = abs(fap(img10905, laplacian_of_gaussian, 1));
imgLOG43590 = abs(fap(img43590, laplacian_of_gaussian, 1));