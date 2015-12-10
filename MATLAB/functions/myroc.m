function f = myroc (img, ref)
%MYROC calculates sensitivity and specificity of an edge detector given an
%image obtained using such detecto and a sample image

%Create a variable fpr False Positives, True Positives, False Negatives
%and True negatives
TP = 0;
FN = 0;
TN = 0;
FP = 0;

for i=1:size(img,1)
    for j=1:size(img,2)
          % get pixel to compare (your edge image) and correspondent pixel from sample image 
          pix = img(i,j);
          refPix = ref(i, j);
          
          % check status of detection and allocate each to a case
          if refPix == 0 && pix == refPix
              TN = TN+1;
     else if refPix == 1 && pix == refPix
              TP = TP+1;
     else if refPix == 1 && pix == 0
              FN = FN+1;
     else if refPix == 0 && pix == 1
              FP = FP+1;    
          end
          end
          end
          end
    end
end
sensitivity = TP/(TP+FN);
specificity = TN/(TN+FP);
f = [sensitivity, specificity];
end