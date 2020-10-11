doubleImage = double(original_quiz)/255;
%imshow(doubleImage)
filterLP = ones([3 3])/9;
output1 = imfilter(doubleImage, filterLP, 'replicate');
downSampledImage=output1(1:2:size(output1,1),1:2:size(output1,2),:);
%imshow(downSampledImage)

upSampledImage = zeros([359,479]);
upSampledImage(1:2:size(upSampledImage,1),1:2:size(upSampledImage,2),:) = downSampledImage;
%imshow(upSampledImage)

filterLP2 = [0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
output2 = imfilter(upSampledImage, filterLP2);
imshow(output2)

mse = sum(sum((doubleImage - output2).^2))/(359*479);
psnr = 10*log10(1/mse)