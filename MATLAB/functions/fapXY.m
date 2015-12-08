function c = fapXY(img, xFilter, yFilter, threshold)
%FAP applies 2 given X and Y filters to an image given as input,
%calculates the magnitude of change from the 2
x = conv2(img, xFilter, 'same');
y = conv2(img, yFilter, 'same');
c = magnitude(x, y, treshold);
c = magnitude(x, y, threshold);

end