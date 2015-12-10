function f = mynormalize(img)
%MYNORMALIZE takes a uint8 grayscale image and normalizes it
lim3 = double(img); %// Cast to double
minvalue = min(lim3(:)); %// Note the change here
maxvalue = max(lim3(:)); %// Got rid of superfluous nested min/max calls
f = uint8((lim3-minvalue)*255/(maxvalue-minvalue)); %// Cast back to uint8
end