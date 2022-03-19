function coords = choose_points(image)

figure(); imshow(image);
zoom on;
waitfor(gcf, 'CurrentCharacter', char(13))
zoom reset
zoom off
[xx, yy] = ginput();
coords = [xx, yy];
close all;
end