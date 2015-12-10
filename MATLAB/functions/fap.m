function c = fap(img, filter, threshold)
%FAP applies a filter to an image given as input,
x = conv2(img, filter, 'same');
c = x > threshold;
end