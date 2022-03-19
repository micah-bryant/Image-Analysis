function cost = average_radius(c,x,y)
    n = length(x);
    d2 = (x-c(1)).^2 + (y - c(2)).^2;
    av_rad2 = (1/n)*sum(d2);
    cost = sum(abs(d2 - av_rad2));
end