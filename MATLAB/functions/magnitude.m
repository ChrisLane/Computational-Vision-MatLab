function m = magnitude(x,y,t)
%MAGN Calculates the magnitude of change from 2 gradients given as
%input and applies a gradient to it
m = sqrt(x.^2 + y.^2) > t;

end