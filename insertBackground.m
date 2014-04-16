function insertBackground( buttonHandle, imgFileName) 
% Inserts the imported image as background for GUI push or toggle button. 
%
% Inputs: 
%  buttonHandle - handle of the button 
%  imgFileName - file name (with path if applicable) of the image
% 

bg_image = imread(imgFileName);
img_size = size(bg_image); 
unitName = get(buttonHandle, 'unit');
set(buttonHandle, 'unit','pixel');
position = get(buttonHandle, 'position');
position(3) = img_size(2); position(4) = img_size(1);
set(buttonHandle, 'CData', bg_image, 'position', position, 'unit', unitName);