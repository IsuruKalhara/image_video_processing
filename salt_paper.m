image = double(noisy);
median_filtered_1pass = medfilt2(image);
median_filtered_2pass = medfilt2(median_filtered_1pass);
imshow(median_filtered_2pass/255)

original_image = double(original); 

mse1 = sum(sum((original_image - image).^2))/(240*320)
psnr1 = 10*log10(255^2/mse1)

mse2 = sum(sum((original_image - median_filtered_1pass).^2))/(240*320)
psnr2 = 10*log10(255^2/mse2)

mse3 = sum(sum((original_image - median_filtered_2pass).^2))/(240*320)
psnr3 = 10*log10(255^2/mse3)
