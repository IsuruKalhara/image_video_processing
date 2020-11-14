imag = imread('Cameraman256.bmp', 'bmp');
imwrite(imag,'generated.jpg','jpg','quality',10);

genImag = imread('generated.jpg');   

imagDouble = double(imag)/255;
genImagDouble = double(genImag)/255;
mse = sum(sum((genImagDouble - imagDouble).^2))/(256*256);
psnr = 10*log10(1/mse)