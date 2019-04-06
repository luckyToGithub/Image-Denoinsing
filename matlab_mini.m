file_name = 'C:\dog_mini.jpg'
I=imread (file_name); 
IB = imnoise (I, "salt & pepper"); 
figure(1)
subplot(3, 2, 1)
subimage(I)
title("Original Image")
subplot(3, 2, 2)
subimage(IB)
title("Noisy Image")

% Averaging filter
N = ones (3)/9; % convolution kernel
If1 = imfilter(IB, N);
subplot(3,2,3)
subimage(If1)
title("Noisy image filtered by a 3-by-3 averaging filter")
v=0:1/255:1; colormap ([v' v' v']);

% Median filtering
If2 = medfilt3(IB); % 3-by-3 median filtering
subplot(3,2,4)
subimage (If2)
title ("Noisy Image filtered by a 3-by-3 median filter")
v=0:1/255:1; colormap ([v' v' v']); % LUT for displaying in gray levels

%hybrid median fiter
IF3 = hmf(IB)
subplot(3,2,5)
subimage(IF3)
title("Noisy image filtered by hybrid median filter")