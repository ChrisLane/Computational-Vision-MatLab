function f  = mythinning(img)
%mythinning performs non-maxima suppression on an edge image
% loop over all rows and columns (i is Y axis, j is X axis)
for i=2:(size(img,1)-1)
    for j=1:size(img,2)
          % get pixel value
          pixel = img(i,j);
          pixelup = img(i-1,j);
          pixeldown = img(i+1,j);
          % check pixel value and assign new value
          if pixel < pixelup || pixel < pixeldown
              new_pixel = 0;
          else
              new_pixel = pixel;
          end
          thinnedImg(i,j)=new_pixel;
    end
end
f = thinnedImg;
end