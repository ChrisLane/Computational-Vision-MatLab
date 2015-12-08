function x = fap(img, filter)
%FAP applies 2 given X and Y filters to an image given as input,
%calculates the magnitude of change from the 2
x = conv2(double(img), double(filter), 'same');

end