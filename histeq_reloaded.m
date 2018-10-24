function [h, O] = histeq_reloaded(I)
    [N,M] = size(I);
    h = imhist(I);
    I = double(I);
    h = h /(N*M);
       for i = 2:256
            h(i) = h(i) + h(i-1);
       end
    h = 256*h;
        for i = 1:N
            for j = 1:M
                O(i,j) = round(h(I(i,j)+1));
            end
        end
O = uint8(O);
h = uint8(h);