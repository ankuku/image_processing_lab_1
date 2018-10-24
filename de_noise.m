function [O] = de_noise(I)
    I = double(I);
    [r,c] = size(I);
    O = zeros(r,c);
    
    for i = 2:r-1
        for j = 2:c-1
            if I(i,j) == 31 %% change the value of noise here
                O(i,j) = (I(i+1,j) + I(i-1,j) + I(i, j-1) + I(i,j+1))/4 ;
            else
                O(i,j) = I(i,j);
            end
        end
    end
O = uint8(O);