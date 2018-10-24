function [O] = hequal(I, a, b)
    I = double(I);    
    [r,c] = size(I);
    O = zeros(r,c);
    for i = 1:r
        for j = 1:c
            if I(i,j) < a
                O(i,j) = 0;
            elseif I(i,j) > b
                O(i,j) = 255;
            else
                O(i,j) = 255*((I(i,j)-a)/(b-a));
            end
        end
    end
O = uint8(O);    