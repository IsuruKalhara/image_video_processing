I1 = double(imread("frame_1.jpg"));
I2 = double(imread("frame_2.jpg"));
Btarget = I2(65:96,81:112);
min = inf;
minX = 0;
minY = 0;
for i = 1:(288-32)
    for j = 1:(352-32)
        temp = sum(sum(abs(I1(i:i+31,j:j+31)-Btarget)))/(32*32);
        if temp < min
            min = temp;
            minX = i;
            minY = j;
        end
    end
end
temp
minX
minY