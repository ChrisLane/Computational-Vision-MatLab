function c = fapXY(img, xFilter, yFilter, threshold)
%FAP applies 2 given X and Y filters to an image given as input,
%calculates the magnitude of change from the 2
x = conv2(img, xFilter, 'same');
y = conv2(img, yFilter, 'same');
c = magn(x, y, threshold);

end
function m = magn(x, y, t)
%MAGN Calculates the magnitude of change from 2 gradients given as
%input and applies a gradient to it
m = sqrt(x.^2 + y.^2) > t;

end