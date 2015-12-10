function c = fap(img, filter, threshold)
%FAP applies a filter to an image given as input,
x = conv2(double(img), double(filter), 'same');
if (threshold > 0)
    c = x > threshold;
else
    c = x;
end