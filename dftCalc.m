image = [[1,0,0,0];[1,0,0,0];[2,1,0,1]]; %[[13,14,15,16];[9,10,11,12];[5,6,7,8];[1,2,3,4]]
disp(dftCalc(0,1,image))
disp(dftCalc(1,0,image))
disp(dftCalc(1,2,image))
disp(dftCalc(2,1,image))
disp(dftCalc(2,0,image))
disp(dftCalc(0,2,image))
function dft = dftCalc(k1,k2,image)
    dft = 0;
    for n1=0:2
        for n2=0:3
            A = exp(((-j*2*pi)/4)*(n1*k1));
            B = exp(((-j*2*pi)/4)*(n2*k2));
            dft=dft+image(n1+1,n2+1)*A*B;
        end
    end
end