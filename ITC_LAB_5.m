clc
clear all
px=input('Enter Matrix P(X)');
pyx=input('Enter Cond matrix');
py=px*pyx
sum=0;
sum1=0;
r=300;
for i=1:width(px)
sum=sum+px(i)*log2(1/px(i));
end
%finding entropy of h and y
disp('H(X)=')
disp(sum)
for i=1:width(py)
sum1=sum1+py(i)*log2(1/py(i));
end
disp('H(Y)=')
disp(sum1)
for i=1:height(pyx)
for j=1:width(pyx)
    pxxy(i,j)=pyx(i,j)*px(i);
end

end
pxxy%joint probability
sum2=0;
for i=1:height(pxxy)
for j=1:width(pxxy)
    sum2=sum2+pxxy(i,j)*log2(1/pxxy(i,j));
end
end
disp('H(X,Y)=')
disp(sum2)
sum3=0;
for i=1:height(pyx)
for j=1:width(pyx)
    sum3=sum3+pxxy(i,j)*log2(1/pyx(i,j));
end
end
disp('H(Y|X)=')
disp(sum3)
disp('H(X|Y)=')
disp(sum2-sum1)
disp('I(X,Y)=')
disp(sum1-sum3)

disp("R =" +r*sum3);
disp("R H(X,Y)=" +r*sum2);
disp("R H(x) =" +r*sum);
disp("R H(y)=" +r*sum1);
R=r*sum3