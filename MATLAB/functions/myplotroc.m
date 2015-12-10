function myplotroc(X,Y)
%plots the ROC results in an array [x,y,x1,y1,x2,y2...] on a 2D graph
%cols = [b, g, r, y, b, f]

plot(X,1-Y,':*')    
xlabel('False Positive Rate (FPR)')
ylabel('True Positive Rate (TPR)')
title('Receiver Operating Characteristic analysis')
legend('Gradient','Roberts','Sobel', 'Gaussian', 'Laplacian', 'LoG')
end