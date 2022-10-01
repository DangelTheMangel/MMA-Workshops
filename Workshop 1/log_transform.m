function B= log_transform(A,c)
%Denne funktion anvender intensitetstransformation c*log(1+a_ij) på
%matricen A.
%
%error('Denne funktion er endnu ikke implementeret')
ad= im2double(A);
[xs,ys] = size(A);
disp(size(A))
x= ad;
for i = 1:xs
    for j = 1:ys
       x(i,j) = c * log(1+ad(i,j)); 
    end
end
B = x;
end

