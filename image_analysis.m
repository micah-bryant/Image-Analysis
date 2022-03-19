clc; clear all;
format long;
addpath("1.34 psi");
fileName = "0 psi t1 l2.jpg";
coords = choose_points(fileName);
info = imfinfo(fileName);
height = info.Height;
width = info.Width;
%
%pBase * mm/pCal * pCal/pBase
coords = convert_pixel_distance(coords);

%correct for changes in resolution
coords(:,1) = coords(:,1).*(1920/width);
coords(:,2) = coords(:,2).*(1080/height);

coords = coords - coords(1,:);
xx = coords(:,1); yy = coords(:,2);

format longG
val = [yy(2)*-1;xx(2)*-1];
%val = [yy(2)*-1;xx(2)*-1;yy(3)*-1;xx(3)*-1];
disp(val)
%kappa = find_curvature(xx, yy);

%disp(kappa);