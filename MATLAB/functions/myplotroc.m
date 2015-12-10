function myplotroc(array)
%plots the ROC results in an array [x,y,x1,y1,x2,y2...] on a 2D graph
figure
for i=1:2:size(array)
    X = array(i);
    Y = array(i+1);
    plot(X,Y,':b*')
    
end
xlabel('False positive rate')
ylabel('True positive rate')
title('Receiver OperatingCharacteristic analisys')
end