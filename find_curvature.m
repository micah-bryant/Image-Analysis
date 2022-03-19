function kappa = find_curvature(xdata, ydata)
    fun = @(c) average_radius(c,xdata,ydata);
    c0 = [mean(xdata); mean(xdata)];
    c = fminunc(fun, c0);
    n = length(xdata);
    d2 = (xdata-c(1)).^2 + (ydata - c(2)).^2;
    av_rad2 = (1/n)*sum(d2);
    radius = sqrt(av_rad2);
    kappa = 1/radius;
    
    theta = linspace(0,2*pi,100);
    xhat = c(1) + radius.*cos(theta);
    yhat = c(2) + radius.*sin(theta);
    
    figure(); plot(xdata,ydata,'.');
    hold on; plot(xhat,yhat);
    %axis square;
    
end