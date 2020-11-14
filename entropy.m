image = imread('Cameraman256.bmp', 'bmp');

count=zeros(1,255);

for i = 1:255
    count(i) = sum(sum(i == image));
end

prob = count/(256*256);
entro = sum(sum(prob.*(-log2(prob))))
