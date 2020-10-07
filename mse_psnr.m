doubleImage = double(cdata)/255;
filterLP = ones([3 3])/9;
output1 = imfilter(doubleImage, filterLP, 'replicate');
mse = sum(sum((doubleImage - output1).^2))/(256*256);
psnr = 10*log10(1/mse)

filterLP2 = ones([5 5])/25;
output2 = imfilter(doubleImage, filterLP2, 'replicate');
mse2 = sum(sum((doubleImage - output2).^2))/(256*256);
psnr2 = 10*log10(1/mse2)
