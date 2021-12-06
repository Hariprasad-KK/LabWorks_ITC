clc
n=input('enter the numbers');
for i=1:n
    a(i)=input('enter prob');
end
s=0;
for i=i:n
    s=s+log(1/a(i))/log(2);
end

for i=1:n
    I=log(1/a(i))/log(2);
    disp('Entropy is: ')
    display(I)
end