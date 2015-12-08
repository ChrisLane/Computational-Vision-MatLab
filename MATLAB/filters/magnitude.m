function m = magnitude(x,y)
%MAGNITUDE Calculates the magnitude of change from 2 gradients given as
%input
m = sqrt(x.^2 + y.^2); 
show_image(m > 15)

end

