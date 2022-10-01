function B= log_transform(A,c)
%Denne funktion anvender intensitetstransformation c*log(1+a_ij) p�
%matricen A.


% vi sikkeres os at alle tallene i billedet er doubles
ad= im2double(A);

% vi gemmer billede s�relsen i variablerne xs og ys (st�r for x size og y size)
[xs,ys] = size(A);
% vi skriver dem ud i konsolen
disp(size(A))
%vi gemmer billede v�rdierne i x 
x= ad;

%vi g�r igennem alle pixel og udf�re log tranformationen
for i = 1:xs
    for j = 1:ys
       x(i,j) = c * log(1+ad(i,j)); 
    end
end

%vi s�tter b til x for at sende vores behandlede blide ud af funktion
B = x;
end

